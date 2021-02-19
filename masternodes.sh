#!/bin/bash


menu_coin()
{
echo "Scegliere il menu del coin"
echo "  1) Snodecoin  2) Marcoin  3) BallCoin 4) Vivocoin 5) DogeCoin 6) TerraCoin 7) Paccoin  8) Block 9) Exit 10) Pivx 11) Installer"

read coin
case $coin in
  1) menu_snd;;
  2) menu_marc;;
  3) menu_ball;;
  4) menu_vivo;;
  5) menu_dogec;;
  6) menu_trc;;
  7) menu_pac;;
  8) menu_block;;
  9) exit;;
 10) menu_pivx;; 
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
echo "  4) staking status      "
echo "  5) unlock wallet       "
echo "  6)   lock wallet       "
echo "  7) status (getinfo)    "
echo "  8) restart periodico   "
echo "  10) aggiungi  addnodes "
echo "  9) torna indietro      "


read snd_azione
case $snd_azione in
  1) snd_status;menu_snd;;
  2) snd_restart;menu_snd;;
  3) snd_copia;menu_snd;;
  4) snd_status_staking;menu_snd;;
  5) snd_wallet_unlock;menu_snd;;
  6) snd_wallet_lock;menu_snd;;
  7) snd_status_getinfo;menu_snd;;
  8) snd_restart_periodico;menu_snd;;
  10) snd_add_nodes;menu_snd;;
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
echo "  4) staking getinfo     "
echo "  5) staking unlock      "
echo "  6) staking restart     "
echo "  7) staking status      "
echo "  9) torna indietro      "


read marc_azione
case $marc_azione in
  1) marc_status;menu_marc;;
  2) marc_restart;menu_marc;;
  3) marc_copia;menu_marc;;
  4) marc_getinfo;menu_marc;;
  5) marc_staking_unlock;menu_marc;;
  6) marc_staking_restart;menu_marc;;
  7) marc_staking_status;menu_marc;;
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

menu_ball()
{
echo "                                                    BALLCOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  4) copia mn1 su tutti  "
echo "  5) esegui addnodes     "
echo "  9) torna indietro      "


read ball_azione
case $ball_azione in
  1) ball_status;menu_ball;;
  2) ball_restart;menu_ball;;
  3) ball_copia;menu_ball;;
  4) ball_copiatutti;menu_ball;;
  5) ball_addnodes;menu_ball;;
  9) menu_coin;;
  *) menu_ball;;
esac
}

menu_dogec()
{
echo "                                                    DOGECOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode "
echo "  4) esegui addnodes  "
echo "  5) copia masternode1 in TUTTI "
echo "  9) torna indietro      "

read dogec_azione
case $dogec_azione in
  1) dogec_status;menu_dogec;;
  2) dogec_restart;menu_dogec;;
  3) dogec_copia;menu_dogec;;
  4) dogec_addnodes;menu_dogec;;
  5) dogec_copia_tutti;menu_dogec;;
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
echo "  1) account status - getinfo  "
echo "  2) staking status "
echo "  3) start staking  "
echo "  4) unlock wallet  "
echo "  5) reboot service "
echo "  9) torna indietro      "


read pac_azione
case $pac_azione in
  1) pac_status;menu_pac;;
  2) pac_status_staking;menu_pac;;
  3) pac_start_staking;menu_pac;;
  4) pac_unlock_wallet;menu_pac;;
  5) pac_restart;menu_pac;;
  9) menu_coin;;
  *) menu_marc;;
esac
}

menu_block()
{
echo "                                                     BLOCK "
echo "  1) service status "
echo "  2) restart service "
#echo "  3) copia masternode    "
echo "  4) staking status      "
echo "  5) unlock wallet       "
echo "  6) lock wallet       "
echo "  7) status (getblockchaininfo)    "
echo "  8) account balance     "
echo "  9) torna indietro      "


read block_azione
case $block_azione in
  1) block_status;menu_block;;
  2) block_restart;menu_block;;
  #3) snd_copia;menu_snd;;
  4) block_status_staking;menu_block;;
  5) block_wallet_unlock;menu_block;;
  6) block_wallet_lock;menu_block;;
  7) block_status_getinfo;menu_block;;
  8) block_status_getbalance;menu_block;;
  9) menu_coin;;
  *) menu_block;;
esac
}


menu_pivx()
{
echo "                                                     PIVX "
echo "  1) service status "
echo "  2) restart service "
echo "  3) getinfo     "
echo "  4) masternode status      "
#echo "  5) unlock wallet       "
#echo "  6) lock wallet       "
#echo "  7) status (getblockchaininfo)    "
#echo "  8) account balance     "
echo "  9) torna indietro      "


read pivx_azione
case $pivx_azione in
  1) pivx_status;menu_pivx;;
  2) pivx_restart;menu_pivx;;
  3) pivx_info;menu_pivx;;
  4) pivx_masternode_status;menu_pivx;;
 # 5) block_wallet_unlock;menu_pivx;;
 # 6) block_wallet_lock;menu_pivx;;
 # 7) block_status_getinfo;menu_pivx;;
 # 8) block_status_getbalance;menu_pivx;;
  9) menu_coin;;
  *) menu_pivx;;
esac
}
############################################# PIVX
pivx_status()
{
systemctl status pivx-mn1.service
}
pivx_restart()
{
  systemctl restart pivx-mn1.service
}
pivx_info()
{
/root/pivx-5.0.1/bin/pivx-cli getinfo
}
pivx_masternode_status()
{
  /root/pivx-5.0.1/bin/pivx-cli getmasternodestatus
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
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn21/.snodecoin -conf=/home/snodecoin-mn21/.snodecoin/snodecoin.conf getstakingstatus
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
snd_restart_periodico()
{
 rm  /root/mn_scripts/snd_restart_periodico.sh
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_restart_periodico.sh > /root/mn_scripts/snd_restart_periodico.sh
 chmod +755 /root/mn_scripts/snd_restart_periodico.sh
 chmod +x /root/mn_scripts/snd_restart_periodico.sh
}
menu_installer()
{
echo "                                                    INSTALLER COIN "
echo "  1) marcoin       installer "
echo "  2) ruxcoincrypto installer "
echo "  3) vivo          installer "
echo "  4) dogec         installer "
echo "  5) terracoin     installer "
echo "  6) paccoin       installer "
echo "  7) snodecoin     installer "
echo "  8) ballcoin      installer "
echo "  10) pivx      installer "
echo "  12) scarica      eseguibili"
echo "  9) torna indietro      "

read installer_azione
case $installer_azione in
  1) marc_installer;menu_installer;;
  2) ruxcrypto_installer;menu_installer;;
  3) vivo_installer;menu_installer;;
  4) dogec_installer;menu_installer;;
  5) terracoin_installer;menu_installer;;
  6) pac_installer;menu_installer;;
  7) snd_installer;menu_installer;;
  8) ball_installer;menu_installer;;
  10) pivx_installer;menu_installer;;
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
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
 /root/mn_scripts/marc_installer.sh
}

marc_getinfo()
{
  /usr/local/bin/marcoin-cli -datadir=/home/marcoin-mn1/.marcoin -conf=/home/marcoin-mn1/.marcoin/marcoin.conf getinfo
}
marc_staking_unlock()
{
  echo " echo /usr/local/bin/marcoin-cli -datadir=/home/marcoin-mn1/.marcoin -conf=/home/marcoin-mn1/.marcoin/marcoin.conf"
}
marc_staking_restart()
{
  systemctl restart marcoin-mn1.service
}
marc_staking_status()
{
  /usr/local/bin/marcoin-cli -datadir=/home/marcoin-mn1/.marcoin -conf=/home/marcoin-mn1/.marcoin/marcoin.conf getstakingstatus
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
  rm  /root/mn_scripts/pac_installer.sh
  wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/pac_installer.sh > /root/mn_scripts/pac_installer.sh
  chmod +755 /root/mn_scripts/pac_installer.sh
  chmod +x /root/mn_scripts/pac_installer.sh
  /root/mn_scripts/pac_installer.sh
}
snd_installer()
{
 rm  /root/mn_scripts/snode_installer18.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/snode_installer18.sh > /root/mn_scripts/snode_installer18.sh
 chmod +755 /root/mn_scripts/snode_installer18.sh
 chmod +x /root/mn_scripts/snode_installer18.sh
 /root/mn_scripts/snode_installer18.sh
}
ball_installer()
{
 rm  /root/mn_scripts/ball_installer.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/ball_installer.sh > /root/mn_scripts/ball_installer.sh
 chmod +755 /root/mn_scripts/ball_installer.sh
 chmod +x /root/mn_scripts/ball_installer.sh
 /root/mn_scripts/ball_installer.sh
}

pivx_installer()
{
 
 wget -O - http://zaim.it/linux_sw/pivx-cli > /usr/local/bin/pivx-cli
 chmod +755 /usr/local/bin/pivx-cli
 chmod +x /usr/local/bin/pivx-cli
 wget -O - http://zaim.it/linux_sw/pivxd > /usr/local/bin/pivxd
 chmod +755 /usr/local/bin/pivxd
 chmod +x /usr/local/bin/pivxd
 
 rm  /root/mn_scripts/pivx_installer.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/pivx_installer.sh > /root/mn_scripts/pivx_installer.sh
 chmod +755 /root/mn_scripts/pivx_installer.sh
 chmod +x /root/mn_scripts/pivx_installer.sh
 /root/mn_scripts/pivx_installer.sh
}


ruxcrypto_installer()
{
 rm  /root/mn_scripts/ruxcrypto_installer.sh
 wget -O - https://raw.githubusercontent.com/way76/mn_maintenance/master/ruxcrypto_installer.sh > /root/mn_scripts/ruxcrypto_installer.sh
 chmod +755 /root/mn_scripts/ruxcrypto_installer.sh
 chmod +x /root/mn_scripts/ruxcrypto_installer.sh
 /root/mn_scripts/ruxcrypto_installer.sh
}
scarica_eseguibili()
{
 wget -O - http://zaim.it/linux_sw/marcoin-cli > /usr/local/bin/marcoin-cli
 chmod +755 /usr/local/bin/marcoin-cli
 chmod +x /usr/local/bin/marcoin-cli
 wget -O - http://zaim.it/linux_sw/marcoind > /usr/local/bin/marcoind
 chmod +755 /usr/local/bin/marcoind
 chmod +x /usr/local/bin/marcoind
  wget -O - http://zaim.it/linux_sw/dogecash-cli > /usr/local/bin/dogecash-cli
 chmod +755 /usr/local/bin/dogecash-cli
 chmod +x /usr/local/bin/dogecash-cli
  wget -O - http://zaim.it/linux_sw/dogecash-qt > /usr/local/bin/dogecash-qt
 chmod +755 /usr/local/bin/dogecash-qt
 chmod +x /usr/local/bin/dogecash-qt
   wget -O - http://zaim.it/linux_sw/dogecashd > /usr/local/bin/dogecashd
 chmod +755 /usr/local/bin/dogecashd
 chmod +x /usr/local/bin/dogecashd
   wget -O - http://zaim.it/linux_sw/dogecash-tx > /usr/local/bin/dogecash-tx
 chmod +755 /usr/local/bin/dogecash-tx
 chmod +x /usr/local/bin/dogecash-tx
    wget -O - http://zaim.it/linux_sw/snodecoind > /usr/local/bin/snodecoind
 chmod +755 /usr/local/bin/snodecoind
 chmod +x /usr/local/bin/snodecoind
    wget -O - http://zaim.it/linux_sw/snodecoin-cli > /usr/local/bin/snodecoin-cli
 chmod +755 /usr/local/bin/snodecoin-cli
 chmod +x /usr/local/bin/snodecoin-cli
     wget -O - http://zaim.it/linux_sw/pacglobald > /usr/local/bin/pacglobald
 chmod +755 /usr/local/bin/pacglobald
 chmod +x /usr/local/bin/pacglobald
    wget -O - http://zaim.it/linux_sw/pacglobal-cli > /usr/local/bin/pacglobal-cli
 chmod +755 /usr/local/bin/pacglobal-cli
 chmod +x /usr/local/bin/pacglobal-cli
 
 
 
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
####################################################### BALLCOIN
ball_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/ball_status.sh > /root/mn_scripts/ball_status.sh
 chmod +755 /root/mn_scripts/ball_status.sh
 chmod +x /root/mn_scripts/ball_status.sh
 /root/mn_scripts/ball_status.sh
}
ball_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/ball_restart_service.sh > /root/mn_scripts/ball_restart_services.sh
 chmod +755 /root/mn_scripts/ball_restart_services.sh
 chmod +x /root/mn_scripts/ball_restart_services.sh
 /root/mn_scripts/ball_restart_services.sh
}
ball_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/ball_replace.sh > /root/mn_scripts/ball_replace.sh
 chmod +755 /root/mn_scripts/ball_replace.sh
 chmod +x /root/mn_scripts/ball_replace.sh
 /root/mn_scripts/ball_replace.sh
}
ball_copiatutti()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/ball_replaceAll.sh > /root/mn_scripts/ball_replaceAll.sh
 chmod +755 /root/mn_scripts/ball_replaceAll.sh
 chmod +x /root/mn_scripts/ball_replaceAll.sh
 /root/mn_scripts/ball_replaceAll.sh
}
ball_addnodes()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/ball_addnode.sh > /root/mn_scripts/ball_addnode.sh
 chmod +755 /root/mn_scripts/ball_addnode.sh
 chmod +x /root/mn_scripts/ball_addnode.sh
 /root/mn_scripts/ball_addnode.sh
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

dogec_copia_tutti()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/dogec_replaceAll.sh > /root/mn_scripts/dogec_replaceAll.sh
 chmod +755 /root/mn_scripts/dogec_replaceAll.sh
 chmod +x /root/mn_scripts/dogec_replaceAll.sh
 /root/mn_scripts/dogec_replaceAll.sh
 
}

dogec_addnodes()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/dogec_addnode.sh > /root/mn_scripts/dogec_addnode.sh
 chmod +755 /root/mn_scripts/dogec_addnode.sh
 chmod +x /root/mn_scripts/dogec_addnode.sh
 /root/mn_scripts/dogec_addnode.sh
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
  /usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf getinfo
}
pac_status_staking()
{
  /usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf getstakingstatus
}
pac_start_staking()
{
  /usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf setstaking true
}
pac_unlock_wallet()
{
  /usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf walletpassphrase Password@99Casuale 999999999999
}
pac_restart()
{
 rm  /root/mn_scripts/pac_restart.sh
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/pac_restart.sh > /root/mn_scripts/pac_restart.sh
 chmod +755 /root/mn_scripts/pac_restart.sh
 chmod +x /root/mn_scripts/pac_restart.sh
 /root/mn_scripts/pac_restart.sh
}




############################################# BLOCK

block_status()
{
 systemctl status block.service
}
block_restart()
{
  systemctl restart block.service
}
block_status_staking()
{
  /usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getstakingstatus
}
block_wallet_lock()
{
  /usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf walletlock
}
block_wallet_unlock()
{
  /usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf walletpassphrase Password@99Casuale 9999999999999 true
}
block_status_getinfo()
{
  /usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getblockchaininfo
}
block_status_getbalance()
{
  /usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getbalance
}

menu_coin
