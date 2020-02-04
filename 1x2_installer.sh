#!/bin/bash

TMP_FOLDER=$(mktemp -d)

DAEMON_ARCHIVE=${1:-"https://github.com/1X2coin/1X2coin/releases/download/v1.0.0/1x2coin-1.0.0-x86_64-linux-gnu.tar.gz"}
ARCHIVE_STRIP=""
DEFAULT_PORT=9300

NODE_IP=$(curl -4 icanhazip.com)

COIN_NAME="1x2coin"
CONFIG_FILE="${COIN_NAME}.conf"
DAEMON_FILE="${COIN_NAME}d"
CLI_FILE="${COIN_NAME}-cli" 

BINARIES_PATH=/usr/local/bin
DAEMON_PATH="${BINARIES_PATH}/${DAEMON_FILE}"
CLI_PATH="${BINARIES_PATH}/${CLI_FILE}"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'


function checks() 
{
  if [[ $(lsb_release -d) != *16.04* ]]; then
    echo -e " ${RED}You are not running Ubuntu 16.04. Installation is cancelled.${NC}"
    exit 1
  fi

  if [[ $EUID -ne 0 ]]; then
     echo -e " ${RED}$0 must be run as root so it can update your system and create the required masternode users.${NC}"
     exit 1
  fi

  #if [ -n "$(pidof ${DAEMON_FILE})" ]; 
  #then
  #  read -e -p " $(echo -e The ${COIN_NAME} daemon is already running.${YELLOW} Do you want to add another master node? [Y/N] $NC)" NEW_NODE
  #  clear
  #else
    NEW_NODE="new"
  #fi
}

function prepare_system() 
{
  clear
  echo -e "Checking if swap space is required."
  local PHYMEM=$(free -g | awk '/^Mem:/{print $2}')
  
  if [ "${PHYMEM}" -lt "2" ]; then
    local SWAP=$(swapon -s get 1 | awk '{print $1}')
    if [ -z "${SWAP}" ]; then
      echo -e "${GREEN}Server is running without a swap file and has less than 2G of RAM, creating a 2G swap file.${NC}"
      dd if=/dev/zero of=/swapfile bs=1024 count=2M
      chmod 600 /swapfile
      mkswap /swapfile
      swapon -a /swapfile
      echo "/swapfile    none    swap    sw    0   0" >> /etc/fstab
    else
      echo -e "${GREEN}Swap file already exists.${NC}"
    fi
  else
    echo -e "${GREEN}Server running with at least 2G of RAM, no swap file needed.${NC}"
  fi
  
  echo -e "${GREEN}Updating package manager.${NC}"
  apt update
  
  echo -e "${GREEN}Upgrading existing packages, it may take some time to finish.${NC}"
  DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y -qq upgrade 
  
  echo -e "${GREEN}Installing all dependencies for the ${COIN_NAME} master node, it may take some time to finish.${NC}"
  apt install -y software-properties-common
  apt-add-repository -y ppa:bitcoin/bitcoin
  apt update
  apt install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    automake \
    bsdmainutils \
    build-essential \
    curl \
    git \
    htop \
    libboost-chrono-dev \
    libboost-dev \
    libboost-filesystem-dev \
    libboost-program-options-dev \
    libboost-system-dev \
    libboost-test-dev \
    libboost-thread-dev \
    libdb4.8-dev \
    libdb4.8++-dev \
    libdb5.3++ \
    libevent-dev \
    libgmp3-dev \
    libminiupnpc-dev \
    libssl-dev \
    libtool autoconf \
    libzmq5 \
    make \
    pkg-config \
    pwgen \
    software-properties-common \
    tar \
    ufw \
    unzip \
    wget

  clear
}

function deploy_binary() 
{
  if [ -f ${DAEMON_PATH} ]; 
  then
    echo -e " ${GREEN}${COIN_NAME} daemon binary file already exists, using binary from ${DAEMON_PATH}.${NC}"
  else
    cd ${TMP_FOLDER}

    local archive=${COIN_NAME}.tar.gz
    echo -e " ${GREEN}Downloading ${DAEMON_ARCHIVE} and deploying the ${COIN_NAME} service.${NC}"
    wget ${DAEMON_ARCHIVE} -O ${archive}

    tar xvzf ${archive}${ARCHIVE_STRIP} >/dev/null 2>&1
    cp ${DAEMON_FILE} ${CLI_FILE} ${BINARIES_PATH}
    chmod +x ${DAEMON_PATH} >/dev/null 2>&1
    chmod +x ${CLI_PATH} >/dev/null 2>&1
    cd

    rm -rf ${TMP_FOLDER}
  fi
}

function enable_firewall() 
{
  echo -e " ${GREEN}Installing fail2ban and setting up firewall to allow access on port ${PORT}.${NC}"

  apt install ufw -y >/dev/null 2>&1

  ufw disable >/dev/null 2>&1
  ufw allow ${PORT}/tcp comment "${COIN_NAME} Masternode port" >/dev/null 2>&1

  ufw allow 22/tcp comment "SSH port" >/dev/null 2>&1
  ufw limit 22/tcp >/dev/null 2>&1
  
  ufw logging on >/dev/null 2>&1
  ufw default deny incoming >/dev/null 2>&1
  ufw default allow outgoing >/dev/null 2>&1

  echo "y" | ufw enable >/dev/null 2>&1
  systemctl enable fail2ban >/dev/null 2>&1
  systemctl start fail2ban >/dev/null 2>&1
}

function add_daemon_service() 
{
  cat << EOF > /etc/systemd/system/${USER_NAME}.service
[Unit]
Description=${COIN_NAME} masternode daemon service
After=network.target
After=syslog.target
[Service]
Type=forking
User=${USER_NAME}
Group=${USER_NAME}
WorkingDirectory=${HOME_FOLDER}
ExecStart=${DAEMON_PATH} -datadir=${HOME_FOLDER} -conf=${HOME_FOLDER}/$CONFIG_FILE -daemon 
ExecStop=${CLI_PATH} -datadir=${HOME_FOLDER} -conf=${HOME_FOLDER}/$CONFIG_FILE stop
Restart=no
RestartSec=3
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=10s
StartLimitInterval=120s
StartLimitBurst=5
  
[Install]
WantedBy=multi-user.target
EOF

  systemctl daemon-reload
  sleep 3

  echo -e " ${GREEN}Starting the ${COIN_NAME} service from ${DAEMON_PATH} on port ${PORT}.${NC}"
  systemctl start ${USER_NAME}.service >/dev/null 2>&1
  
  echo -e " ${GREEN}Enabling the service to start on reboot.${NC}"
  systemctl enable ${USER_NAME}.service >/dev/null 2>&1

  if [[ -z $(pidof $DAEMON_FILE) ]]; then
    echo -e "${RED}The ${COIN_NAME} masternode service is not running${NC}. You should start by running the following commands as root:"
    echo "systemctl start ${USER_NAME}.service"
    echo "systemctl status ${USER_NAME}.service"
    echo "less /var/log/syslog"
    exit 1
  fi
}

function get_port_and_user()
{
  echo -e "${GREEN} Identifying username and port for the masternode${NC}"

  num=1;
   
  if [ -d /home/1x2coin-mn1 ]; then 
  num=2; 
  if [ -d /home/1x2coin-mn2 ]; then 
  num=3; 
  if [ -d /home/1x2coin-mn3 ]; then 
  num=4; 
  if [ -d /home/1x2coin-mn4 ]; then 
  num=5; 
  if [ -d /home/1x2coin-mn5 ]; then 
  num=6;
  if [ -d /home/1x2coin-mn6 ]; then 
  num=7;
  if [ -d /home/1x2coin-mn7 ]; then 
  num=8; 
  if [ -d /home/1x2coin-mn8 ]; then 
  num=9; 
  if [ -d /home/1x2coin-mn9 ]; then 
  num=10; 
  if [ -d /home/1x2coin-mn10 ]; then 
  num=11; 
  if [ -d /home/1x2coin-mn11 ]; then 
  num=12; 
  if [ -d /home/1x2coin-mn12 ]; then 
  num=13; 
  if [ -d /home/1x2coin-mn13 ]; then 
  num=14; 
  if [ -d /home/1x2coin-mn14 ]; then 
  num=15; 
  if [ -d /home/1x2coin-mn15 ]; then 
  num=16; 
  if [ -d /home/1x2coin-mn16 ]; then 
  num=17; 
  if [ -d /home/1x2coin-mn17 ]; then 
  num=18; 
  if [ -d /home/1x2coin-mn18 ]; then 
  num=19; 
  if [ -d /home/1x2coin-mn19 ]; then 
  num=20; 
  if [ -d /home/1x2coin-mn20 ]; then 
  num=21; 
  else num=20; fi
  else num=19; fi
  else num=18; fi
  else num=17; fi
  else num=16; fi
  else num=15; fi
  else num=14; fi
  else num=13; fi
  else num=12; fi	
  else num=11; fi	
  else num=10; fi
  else num=9; fi	
  else num=8; fi	
  else num=7; fi 
  else num=6; fi
  else num=5; fi
  else num=4; fi
  else num=3; fi
  else num=2; fi
  else num=1; fi 
  
  
  
  if [[ ${num} -gt 20 ]];
    then
      echo -e "${RED} To ensure your VPS and masternode run smoothly, you should not run more than 20 ${COIN_NAME} nodes (${num}) on the same VPS${NC}"
      echo -e "${RED} The install script will now exit so you can run it from another VPS.${NC}"
      exit 1
    fi
  
  
  PORT=$((${DEFAULT_PORT} + ((${num} - 1) * 2)))
  USER_NAME="${COIN_NAME}-mn${num}"
}

function create_user() 
{  
  echo -e "${GREEN} Creating a new user ${USER_NAME} to run the masternode${NC}"
  useradd -m ${USER_NAME}

  USERPASS=$(pwgen -s 12 1)
  echo "${USER_NAME}:${USERPASS}" | chpasswd

  local home=$(sudo -H -u ${USER_NAME} bash -c 'echo ${HOME}')
  HOME_FOLDER="${home}/.${COIN_NAME}"
      
  mkdir -p ${HOME_FOLDER}
  
  if [ "${USER_NAME}" != "1x2coin-mn1" ]
  then
    cp -r /home/1x2coin-mn1/.1x2coin/blocks /home/${USER_NAME}/.1x2coin/blocks
    cp -r /home/1x2coin-mn1/.1x2coin/chainstate /home/${USER_NAME}/.1x2coin/chainstate
    cp -r /home/1x2coin-mn1/.1x2coin/database /home/${USER_NAME}/.1x2coin/database
    chmod a+rwx /home/${USER_NAME}/.1x2coin/blocks
    chmod a+rwx /home/${USER_NAME}/.1x2coin/chainstate
    chmod a+rwx /home/${USER_NAME}/.1x2coin/database
  fi
  
  
  
  
}

function chown_home_folder()
{
  chown -R ${USER_NAME}:${USER_NAME} ${HOME_FOLDER} >/dev/null 2>&1
}

function create_config() 
{
  RPCUSER=$(pwgen -s 8 1)
  RPCPASSWORD=$(pwgen -s 15 1)
  cat << EOF > ${HOME_FOLDER}/${CONFIG_FILE}
rpcuser=${RPCUSER}
rpcpassword=${RPCPASSWORD}
rpcallowip=127.0.0.1
rpcport=$[PORT+1]
port=${PORT}
listen=1
server=1
daemon=1
staking=0
EOF
}

function start_node()
{
  sudo -u ${USER_NAME} ${DAEMON_PATH} -datadir=${HOME_FOLDER} -conf=${HOME_FOLDER}/${CONFIG_FILE} -daemon >/dev/null 2>&1
  sleep 5
}

KEY_ATTEMPT=0
function create_key() 
{
  echo -e "${GREEN} Creating masternode private key${NC}"
  local privkey=$(sudo -u ${USER_NAME} ${CLI_PATH} -datadir=${HOME_FOLDER} -conf=${HOME_FOLDER}/${CONFIG_FILE} masternode genkey 2>&1)

  if [[ -z "${privkey}" ]] || [[ "${privkey^^}" = *"ERROR"* ]]; 
  then
    local retry=10
    echo -e "${GREEN}  - Attempt ${KEY_ATTEMPT}/20: Unable to request private key or node not ready, retrying in ${retry} seconds ...${NC}"
    sleep ${retry}
    
    KEY_ATTEMPT=$[KEY_ATTEMPT+1]
    if [[ ${KEY_ATTEMPT} -eq 20 ]];
    then
      echo -e "${RED}  - Attempt ${KEY_ATTEMPT}/20: Unable to request a private key from the masternode, installation cannot continue.${NC}"
      exit 1
    else
      create_key
    fi
  else
    echo -e "${GREEN}  - Privkey successfully generated${NC}"
    PRIVKEY=${privkey}

    sudo -u ${USER_NAME} ${CLI_PATH} -datadir=${HOME_FOLDER} -conf=${HOME_FOLDER}/${CONFIG_FILE} stop >/dev/null 2>&1
    sleep 5
  fi
}

function update_config() 
{  
  cat << EOF >> ${HOME_FOLDER}/${CONFIG_FILE}
logtimestamps=1
maxconnections=16
masternode=1
externalip=${NODE_IP}
masternodeprivkey=${PRIVKEY}
EOF
}

function add_log_rotate()
{
  LOG_FILE="${HOME_FOLDER}/debug.log";

  cat << EOF >> /home/${USER_NAME}/logrotate.conf
${HOME_FOLDER}/*.log {
    rotate 4
    weekly
    compress
    missingok
    notifempty
}
EOF

  if ! crontab -l >/dev/null | grep "/home/${USER_NAME}/logrotate.conf"; then
    (crontab -l ; echo "1 0 * * 1 /usr/sbin/logrotate /home/${USER_NAME}/logrotate.conf --state /home/${USER_NAME}/logrotate-state") | crontab -
  fi
}

function show_output() 
{
 echo
 echo -e "================================================================================================================================"
 echo -e "${GREEN}"
 echo -e "                                                 ${COIN_NAME^^} installation completed${NC}"
 echo
 echo -e " Your ${COIN_NAME^^} coin master node is up and running." 
 echo -e "  - it is running as the ${GREEN}${USER_NAME}${NC} user, listening on port ${GREEN}${PORT}${NC} at your VPS address ${GREEN}${NODE_IP}${NC}."
 echo -e "  - the ${GREEN}${USER_NAME}${NC} password is ${GREEN}${USERPASS}${NC}"
 echo -e "  - the ${COIN_NAME^^} configuration file is located at ${GREEN}${HOME_FOLDER}/${CONFIG_FILE}${NC}"
 echo -e "  - the masternode privkey is ${GREEN}${PRIVKEY}${NC}"
 echo
 echo -e " You can manage your ${COIN_NAME^^} service from the cmdline with the following commands:"
 echo -e "  - ${GREEN}systemctl start ${USER_NAME}.service${NC} to start the service for the given user."
 echo -e "  - ${GREEN}systemctl stop ${USER_NAME}.service${NC} to stop the service for the given user."
 echo -e "  - ${GREEN}systemctl status ${USER_NAME}.service${NC} to see the service status for the given user."
 echo
 echo -e " The installed service is set to:"
 echo -e "  - auto start when your VPS is rebooted."
 echo -e "  - rotate your ${GREEN}${LOG_FILE}${NC} file once per week and keep the last 4 weeks of logs."
 echo
 echo -e " You can find the masternode status when logged in as ${GREEN}${USER_NAME}${NC} using the command below:"
 echo -e "  - ${GREEN}${CLI_FILE} getinfo${NC} to retreive your nodes status and information"
 echo
 echo -e " If you are not logged in as ${GREEN}${USER_NAME}${NC} then you can run ${YELLOW}su - ${USER_NAME}${NC} to switch to that user"
 echo -e " before running the ${GREEN}${CLI_FILE} getinfo${NC} command."
 echo -e " NOTE: the ${DAEMON_FILE} daemon must be running first before trying this command. See notes above on service commands usage."
 echo
 echo -e " Make sure you keep the information above somewhere private and secure so you can refer back to it." 
 echo
 echo -e " ${YELLOW}==> NEVER SHARE YOUR PRIVKEY WITH ANYONE, IF SOMEONE OBTAINS IT THEY CAN STEAL ALL YOUR COINS <==${NC}"
 echo
 echo -e "================================================================================================================================"
 echo
 echo
}

function setup_node() 
{
  get_port_and_user
  create_user
  create_config
  chown_home_folder
  start_node
  create_key
  update_config
  chown_home_folder
  enable_firewall
  add_daemon_service
  add_log_rotate
  show_output
}

clear

echo
echo -e "${GREEN}"
echo -e "============================================================================================================="
echo
echo -e "                                     8b    d8    db    88\"\"Yb  dP\"\"b8"
echo -e "                                     88b  d88   dPYb   88__dP dP   \`\""
echo -e "                                     88YbdP88  dP__Yb  88\"Yb  Yb"  
echo -e "                                     88 YY 88 dP\"\"\"\"Yb 88  Yb  YboodP" 
echo
echo                          
echo -e "${NC}"
echo -e " This script will automate the installation of your ${COIN_NAME^^} coin masternode and server configuration by"
echo -e " performing the following steps:"
echo
echo -e "  - Prepare your system with the required dependencies"
echo -e "  - Obtain the latest ${COIN_NAME^^} masternode files from the ${COIN_NAME} GitHub repository"
echo -e "  - Create a user and password to run the ${COIN_NAME^^} masternode service"
echo -e "  - Install the ${COIN_NAME^^} masternode service under the new user [not root]"
echo -e "  - Add DDoS protection using fail2ban"
echo -e "  - Update the system firewall to only allow the masternode port and outgoing connections"
echo -e "  - Rotate and archive the masternode logs to save disk space"
echo
echo -e " You will see ${YELLOW}questions${NC}, ${GREEN}information${NC} and ${RED}errors${NC}. A summary of what has been done will be shown at the end."
echo
echo -e " The files will be downloaded and installed from:"
echo -e " ${GREEN}${DAEMON_ARCHIVE}${NC}"
echo
echo -e " Script created by click2install"
echo -e "  - GitHub: https://github.com/click2install"
echo -e "  - Discord: click2install#0001"
echo -e "  - MARC: ${DONATION_ADDRESS}"
echo -e "  -  BTC: 1DJdhFp6CiVZSBSsXcecp1FnuHXDcsYQPu"
echo -e "${GREEN}"
echo -e "============================================================================================================="              
echo -e "${NC}"
read -e -p "$(echo -e ${YELLOW} Do you want to continue? [Y/N] ${NC})" CHOICE

if [[ ("${CHOICE}" == "n" || "${CHOICE}" == "N") ]]; then
  exit 1;
fi

checks

if [[ ("${NEW_NODE}" == "y" || "${NEW_NODE}" == "Y") ]]; then
  setup_node
  exit 0
elif [[ "${NEW_NODE}" == "new" ]]; then
  prepare_system
  deploy_binary
  setup_node
else
  echo -e "${GREEN}${COIN_NAME^^} daemon already running.${NC}"
  exit 0
fi
