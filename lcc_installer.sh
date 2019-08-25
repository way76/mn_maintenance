add-apt-repository ppa:bitcoin/bitcoin
apt-get update
apt-get install libdb4.8-dev libdb4.8++-dev
apt-get install libboost-all-dev libzmq3-dev libminiupnpc-dev
apt-get install curl git build-essential libtool autotools-dev
apt-get install automake pkg-config bsdmainutils python3
apt-get install software-properties-common libssl-dev libevent-dev
mkdir /downloads
cd /downloads
git clone https://github.com/litecoincash-project/litecoincash
cd litecoincash
chown root.root * -R
chmod 755 autogen.sh
chmod 755 share/genbuild.sh
./autogen.sh
./configure
make
make install
mkdir ~/.litecoincash
nano $HOME/.litecoincash/litecoincash.conf
rpcuser=virtualcoin2018
rpcpassword=kamisama123
