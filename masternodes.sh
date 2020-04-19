#!/bin/bash

menu_coin()
{
echo "Scegliere il menu del coin"
echo "  1) Snodecoin  2) Marcoin  3) 1x2Coin 4) Vivocoin 5) DogeCoin 9) Exit"

read coin
case $coin in
  1) menu_snd;;
  2) menu_marc;;
  3) menu_1x2;;
  4) menu_vivo;;
  5) menu_dogec;;
  9) exit;;
  *) echo "invalid option";;
esac
}
menu_snd()
{
echo "                                                     SNODECOIN "
echo "  1) status (getinfo)    "
echo "  2) status (sync)       "
echo "  3) status (peer)       "
echo "  4) status (staking)    "
echo "  5) wallet lock         "
echo "  6) wallet unlock       "
echo "  7) addnodes  script    "
echo "  8) log saldo conto     "
echo "  9) torna indietro      "


read snd_azione
case $snd_azione in
  1) snd_status_getinfo;menu_snd;;
  2) snd_status_sync;menu_snd;;
  3) snd_status_peer;menu_snd;;
  4) snd_status_staking;menu_snd;;
  5) snd_wallet_lock;menu_snd;;
  6) snd_wallet_unlock;menu_snd;;
  7) snd_add_nodes;menu_snd;;
  8) snd_log_saldo;menu_snd;;
  9) menu_coin;;
  *) menu_snd;;
esac
}

menu_marc()
{
echo "                                                    MARCOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  9) torna indietro      "


read marc_azione
case $marc_azione in
  1) marc_status;menu_marc;;
  2) marc_restart;menu_marc;;
  3) marc_copia;menu_marc;;
  9) menu_coin;;
  *) menu_marc;;
esac
}

menu_vivo()
{
echo "                                                     VIVOCOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  9) torna indietro      "


read vivo_azione
case $vivo_azione in
  1) vivo_status;menu_vivo;;
  2) vivo_restart;menu_vivo;;
  3) vivo_copia;menu_vivo;;
  9) menu_coin;;
  *) menu_vivo;;
esac
}

menu_1x2()
{
echo "                                                    1x2COIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  9) torna indietro      "


read a1a2_azione
case $a1a2_azione in
  1) a12_status;menu_1x2;;
  2) a12_restart;menu_1x2;;
  3) a12_copia;menu_1x2;;
  9) menu_coin;;
  *) menu_1x2;;
esac
}

menu_dogec()
{
echo "                                                    1x2COIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  9) torna indietro      "

read dogec_azione
case $dogec_azione in
  1) dogec_status;menu_dogec;;
  2) dogec_restart;menu_dogec;;
  9) menu_coin;;
  *) menu_dogec;;
esac



}


############################################# SNODECOIN
snd_status_getinfo()
{
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf getinfo
}
snd_status_sync()
{
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf mnsync status
}
snd_status_peer()
{
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf getpeerinfo | grep -nw addr
}
snd_status_staking()
{
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf getstakingstatus
}
snd_wallet_lock()
{
  /usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf walletlock
}
snd_wallet_unlock()
{
  /usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf walletpassphrase System128@Limpresa 9999999999999 true
}
snd_add_nodes()
{
 rm  /root/mn_scripts/snd_addnode.sh
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_addnode.sh > /root/mn_scripts/snd_add_node.sh
 chmod +755 /root/mn_scripts/snd_add_node.sh
 chmod +x /root/mn_scripts/snd_add_node.sh
 /root/mn_scripts/snd_add_node.sh
}
snd_log_saldo()
{
  nano /root/mn_scripts/snd_balance.txt 
}

####################################################### MARCOIN
marc_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_status.sh > /root/mn_scripts/marc_status.sh
 chmod +755 /root/mn_scripts/marc_status.sh
 chmod +x /root/mn_scripts/marc_status.sh
 /root/mn_scripts/marc_status.sh
}
marc_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_restart_service.sh > /root/mn_scripts/marc_restart_services.sh
 chmod +755 /root/mn_scripts/marc_restart_services.sh
 chmod +x /root/mn_scripts/marc_restart_services.sh
 /root/mn_scripts/marc_restart_services.sh
}
marc_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_replace.sh > /root/mn_scripts/marc_replace.sh
 chmod +755 /root/mn_scripts/marc_replace.sh
 chmod +x /root/mn_scripts/marc_replace.sh
 /root/mn_scripts/marc_replace.sh
}

####################################################### VIVOCOIN
vivo_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/vivo_stats.sh > /root/mn_scripts/vivo_stats.sh
 chmod +755 /root/mn_scripts/vivo_stats.sh
 chmod +x /root/mn_scripts/vivo_stats.sh
 /root/mn_scripts/vivo_stats.sh
}
vivo_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/vivo_restart_service.sh > /root/mn_scripts/vivo_restart_services.sh
 chmod +755 /root/mn_scripts/vivo_restart_services.sh
 chmod +x /root/mn_scripts/vivo_restart_services.sh
 /root/mn_scripts/vivo_restart_services.sh
}
vivo_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/vivo_replace.sh > /root/mn_scripts/vivo_replace.sh
 chmod +755 /root/mn_scripts/vivo_replace.sh
 chmod +x /root/mn_scripts/vivo_replace.sh
 /root/mn_scripts/vivo_replace.sh
}
####################################################### 1x2COIN
a12_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_status.sh > /root/mn_scripts/1x2_status.sh
 chmod +755 /root/mn_scripts/1x2_status.sh
 chmod +x /root/mn_scripts/1x2_status.sh
 /root/mn_scripts/1x2_status.sh
}
a12_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_restart_service.sh > /root/mn_scripts/1x2_restart_services.sh
 chmod +755 /root/mn_scripts/1x2_restart_services.sh
 chmod +x /root/mn_scripts/1x2_restart_services.sh
 /root/mn_scripts/1x2_restart_services.sh
}
a12_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_replace.sh > /root/mn_scripts/1x2_replace.sh
 chmod +755 /root/mn_scripts/1x2_replace.sh
 chmod +x /root/mn_scripts/1x2_replace.sh
 /root/mn_scripts/1x2_replace.sh
}
####################################################### DOGECOIN
dogec_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/dogec_status.sh > /root/mn_scripts/dogec_status.sh
 chmod +755 /root/mn_scripts/dogec_status.sh
 chmod +x /root/mn_scripts/dogec_status.sh
 /root/mn_scripts/dogec_status.sh
}
dogec_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/dogec_restart.sh > /root/mn_scripts/dogec_restart.sh
 chmod +755 /root/mn_scripts/dogec_restart.sh
 chmod +x /root/mn_scripts/dogec_restart.sh
 /root/mn_scripts/dogec_restart.sh
}


menu_coin
