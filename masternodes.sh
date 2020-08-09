#!/bin/bash

menu_coin()
{
echo "Scegliere il menu del coin"
echo "  1) Snodecoin  2) Marcoin  3) 1x2Coin 4) Vivocoin 5) DogeCoin 6) TerraCoin 7) Paccoin   9) Exit 11) Installer"

read coin
case $coin in
  1) menu_snd;;
  2) menu_marc;;
  3) menu_1x2;;
  4) menu_vivo;;
  5) menu_dogec;;
  6) menu_trc;;
  7) menu_pac;;
  9) exit;;
 11) menu_installer;; 
  *) echo "invalid option";;
esac
}
menu_snd()
{
echo "                                                     SNODECOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  9) torna indietro      "

read snd_azione
case $snd_azione in
  1) snd_status;menu_snd;;
  2) snd_restart;menu_snd;;
  3) snd_copia;menu_snd;;
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
echo "  4) copia masternode  1 in tutti  "
echo "  9) torna indietro      "


read vivo_azione
case $vivo_azione in
  1) vivo_status;menu_vivo;;
  2) vivo_restart;menu_vivo;;
  3) vivo_copia;menu_vivo;;
  4) vivo_copiaAll;menu_vivo;;
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
echo "  4) copia mn1 su tutti  "
echo "  9) torna indietro      "


read a1a2_azione
case $a1a2_azione in
  1) a12_status;menu_1x2;;
  2) a12_restart;menu_1x2;;
  3) a12_copia;menu_1x2;;
  4) a12_copiatutti;menu_1x2;;
  9) menu_coin;;
  *) menu_1x2;;
esac
}

menu_dogec()
{
echo "                                                    DOGECOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode "
echo "  9) torna indietro      "

read dogec_azione
case $dogec_azione in
  1) dogec_status;menu_dogec;;
  2) dogec_restart;menu_dogec;;
  3) dogec_copia;menu_dogec;;
  9) menu_coin;;
  *) menu_dogec;;
esac



}
menu_trc()
{
echo "                                                    TERRACOIN   "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
#echo "  3) copia masternode    "
echo "  9) torna indietro      "


read trc_azione
case $trc_azione in
  1) trc_status;menu_trc;;
  2) trc_restart;menu_trc;;
  #3) trc_copia;menu_trc;;
  9) menu_coin;;
  *) menu_trc;;
esac
}
menu_pac()
{
echo "                                                    PACCOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
#echo "  3) copia masternode    "
echo "  9) torna indietro      "


read pac_azione
case $pac_azione in
  1) pac_status;menu_pac;;
  2) pac_restart;menu_pac;;
  #3) pac_copia;menu_pac;;
  9) menu_coin;;
  *) menu_marc;;
esac
}
############################################# SNODECOIN
snd_status_getinfo()
{
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf getinfo
}
snd_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_status.sh > /root/mn_scripts/snd_status.sh
 chmod +755 /root/mn_scripts/snd_status.sh
 chmod +x /root/mn_scripts/snd_status.sh
 /root/mn_scripts/snd_status.sh
}
snd_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_restart_services.sh > /root/mn_scripts/snd_restart_services.sh
 chmod +755 /root/mn_scripts/snd_restart_services.sh
 chmod +x /root/mn_scripts/snd_restart_services.sh
 /root/mn_scripts/snd_restart_services.sh
}
snd_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_replace.sh > /root/mn_scripts/snd_replace.sh
 chmod +755 /root/mn_scripts/snd_replace.sh
 chmod +x /root/mn_scripts/snd_replace.sh
 /root/mn_scripts/snd_replace.sh
}



snd_restart_services.sh


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
  /usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf walletpassphrase Password@99Casuale 9999999999999 true
}
snd_add_nodes()
{
 rm  /root/mn_scripts/snd_addnode.sh
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_addnode.sh > /root/mn_scripts/snd_addnode.sh
 chmod +755 /root/mn_scripts/snd_addnode.sh
 chmod +x /root/mn_scripts/snd_addnode.sh
 /root/mn_scripts/snd_addnode.sh
}
snd_log_saldo()
{
  nano /root/mn_scripts/snd_balance.txt 
}

menu_installer()
{
echo "                                                    INSTALLER COIN "
echo "  1) marcoin       installer "
echo "  2) 1x2coin       installer "
echo "  3) vivo          installer "
echo "  4) dogec         installer "
echo "  5) terracoin     installer "
echo "  6) paccoin       installer "
echo "  7) snodecoin     installer "
echo "  12) scarica      eseguibili"
echo "  9) torna indietro      "

read installer_azione
case $installer_azione in
  1) marc_installer;menu_installer;;
  2) a1x2_installer;menu_installer;;
  3) vivo_installer;menu_installer;;
  4) dogec_installer;menu_installer;;
  5) terracoin_installer;menu_installer;;
  6) pac_installer;menu_installer;;
  7) snd_installer;menu_installer;;
  12) scarica_eseguibili;menu_installer;;
  9) menu_coin;;
  *) menu_installer;;
esac
}

marc_installer()
{
 rm  /root/mn_scripts/marc_installer.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_installer.sh > /root/mn_scripts/marc_installer.sh
 chmod +755 /root/mn_scripts/marc_installer.sh
 chmod +x /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
}

a1x2_installer()
{
 rm  /root/mn_scripts/1x2_installer.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_installer.sh > /root/mn_scripts/1x2_installer.sh
 chmod +755 /root/mn_scripts/1x2_installer.sh
 chmod +x /root/mn_scripts/1x2_installer.sh
 /root/mn_scripts/1x2_installer.sh
}

vivo_installer()
{
 rm  /root/mn_scripts/1vivobinMulti.sh
 wget https://raw.githubusercontent.com/coolblock/vpsVivo/master/utils/vivo/1vivobinMulti.sh > /root/mn_scripts/1vivobinMulti.sh
 chmod +755 /root/mn_scripts/1vivobinMulti.sh
 chmod +x /root/mn_scripts/1vivobinMulti.sh
 /root/mn_scripts/1vivobinMulti.sh
}
dogec_installer()
{
 #rm  /root/mn_scripts/1vivobinMulti.sh
 bash -ic "$(wget -4qO- -o- raw.githubusercontent.com/matsuro-hadouken/multi-mn-installation/master/multi-nodes-installer.sh)" ; source ~/.bashrc
 #chmod +755 /root/mn_scripts/1vivobinMulti.sh
 #chmod +x /root/mn_scripts/1vivobinMulti.sh
 #/root/mn_scripts/1vivobinMulti.sh
}
terracoin_installer()
{
 #rm  /root/mn_scripts/1vivobinMulti.sh
 apt-get install -y python ; rm trc.py; wget https://raw.githubusercontent.com/way76/terracoin/master/trc.py && python trc.py
 #chmod +755 /root/mn_scripts/1vivobinMulti.sh
 #chmod +x /root/mn_scripts/1vivobinMulti.sh
 #/root/mn_scripts/1vivobinMulti.sh
}
pac_installer()
{
 #rm  /root/mn_scripts/1vivobinMulti.sh
 #apt-get install -y python ; rm trc.py; wget https://raw.githubusercontent.com/way76/terracoin/master/trc.py && python trc.py
 #chmod +755 /root/mn_scripts/1vivobinMulti.sh
 #chmod +x /root/mn_scripts/1vivobinMulti.sh
 #/root/mn_scripts/1vivobinMulti.sh
 echo " funzionalita non implementata "
}
snd_installer()
{
 rm  /root/mn_scripts/snode_installer18.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/snode_installer18.sh > /root/mn_scripts/snode_installer18.sh
 chmod +755 /root/mn_scripts/snode_installer18.sh
 chmod +x /root/mn_scripts/snode_installer18.sh
 /root/mn_scripts/snode_installer18.sh
}
scarica_eseguibili()
{
 wget -O - http://zaim.it/linux_sw/1x2coin-cli > /usr/local/bin/1x2coin-cli
 chmod +755 /usr/local/bin/1x2coin-cli
 chmod +x /usr/local/bin/1x2coin-cli
 wget -O - http://zaim.it/linux_sw/1x2coind > /usr/local/bin/1x2coind
 chmod +755 /usr/local/bin/1x2coind
 chmod +x /usr/local/bin/1x2coind
 wget -O - http://zaim.it/linux_sw/marcoin-cli > /usr/local/bin/marcoin-cli
 chmod +755 /usr/local/bin/marcoin-cli
 chmod +x /usr/local/bin/marcoin-cli
 wget -O - http://zaim.it/linux_sw/marcoind > /usr/local/bin/marcoind
 chmod +755 /usr/local/bin/marcoind
 chmod +x /usr/local/bin/marcoind
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
vivo_copiaAll()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/vivo_replaceAll.sh > /root/mn_scripts/vivo_replaceAll.sh
 chmod +755 /root/mn_scripts/vivo_replaceAll.sh
 chmod +x /root/mn_scripts/vivo_replaceAll.sh
 /root/mn_scripts/vivo_replaceAll.sh
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
a12_copiatutti()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_replaceAll.sh > /root/mn_scripts/1x2_replaceAll.sh
 chmod +755 /root/mn_scripts/1x2_replaceAll.sh
 chmod +x /root/mn_scripts/1x2_replaceAll.sh
 /root/mn_scripts/1x2_replaceAll.sh
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
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/dogec_restart_services.sh > /root/mn_scripts/dogec_restart_services.sh
 chmod +755 /root/mn_scripts/dogec_restart_services.sh
 chmod +x /root/mn_scripts/dogec_restart_services.sh
 /root/mn_scripts/dogec_restart_services.sh
}
dogec_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/dogec_replace.sh > /root/mn_scripts/dogec_replace.sh
 chmod +755 /root/mn_scripts/dogec_replace.sh
 chmod +x /root/mn_scripts/dogec_replace.sh
 /root/mn_scripts/dogec_replace.sh
}

####################################################### TERRACOIN
trc_status()
{
 
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/trc_status.sh > /root/mn_scripts/trc_status.sh
 chmod +755 /root/mn_scripts/trc_status.sh
 chmod +x /root/mn_scripts/trc_status.sh
 /root/mn_scripts/trc_status.sh
}
trc_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/trc_restart_service.sh > /root/mn_scripts/trc_restart_services.sh
 chmod +755 /root/mn_scripts/trc_restart_services.sh
 chmod +x /root/mn_scripts/trc_restart_services.sh
 /root/mn_scripts/trc_restart_services.sh
}
trc_copia()
{
 #wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_replace.sh > /root/mn_scripts/marc_replace.sh
 #chmod +755 /root/mn_scripts/marc_replace.sh
 #chmod +x /root/mn_scripts/marc_replace.sh
 #/root/mn_scripts/marc_replace.sh
 echo " funzionalita non implementata"
}

####################################################### PACCOIN
pac_status()
{
 
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/pac_status.sh > /root/mn_scripts/pac_status.sh
 chmod +755 /root/mn_scripts/pac_status.sh
 chmod +x /root/mn_scripts/pac_status.sh
 /root/mn_scripts/pac_status.sh
}
pac_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/pac_restart_service.sh > /root/mn_scripts/pac_restart.sh
 chmod +755 /root/mn_scripts/pac_restart_services.sh
 chmod +x /root/mn_scripts/pac_restart_services.sh
 /root/mn_scripts/pac_restart_services.sh
}
pac_copia()
{
 #wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_replace.sh > /root/mn_scripts/marc_replace.sh
 #chmod +755 /root/mn_scripts/marc_replace.sh
 #chmod +x /root/mn_scripts/marc_replace.sh
 #/root/mn_scripts/marc_replace.sh
 echo " funzionalita non implementata"
}
menu_coin
