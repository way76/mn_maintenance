#!/bin/bash

menu_coin()
{
echo "Scegliere il menu del coin"
echo "  1) Snodecoin "
echo "  2) Marcoin   "
echo "  3) Vivocoin  "
echo "  9) Exit      "

read coin
case $coin in
  1) menu_snd;;
  2) menu_marc;;
  3) menu_vivo;;
  9) exit;;
  *) echo "invalid option";;
esac
}
menu_snd()
{
echo "                                                     SNODECOIN "
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  4) recupero nodi       "
echo "  9) torna indietro      "


read snd_azione
case $snd_azione in
  1) snd_status;menu_snd;;
  2) snd_restart;menu_snd;;
  3) snd_copia;menu_snd;;
  4) snd_addnode;menu_snd;;
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
#echo "  3) copia masternode    "
echo "  9) torna indietro      "


read 1x2_azione
case $1x2_azione in
  1) 1x2_status;menu_1x2;;
  2) 1x2_restart;menu_1x2;;
  #3) 1x2_copia;menu_1x2;;
  9) menu_coin;;
  *) menu_1x2;;
esac
}





############################################# SNODECOIN
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
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_addnode.sh > /root/mn_scripts/snd_addnode.sh
 chmod +755 /root/mn_scripts/snd_addnode.sh
 chmod +x /root/mn_scripts/snd_addnode.sh
 /root/mn_scripts/snd_addnode.sh
}
snd_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_replace.sh > /root/mn_scripts/snd_replace.sh
 chmod +755 /root/mn_scripts/snd_replace.sh
 chmod +x /root/mn_scripts/snd_replace.sh
 /root/mn_scripts/snd_replace.sh
}
snd_addnode()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/snd_addnode.sh > /root/mn_scripts/snd_addnode.sh
 chmod +755 /root/mn_scripts/snd_addnode.sh
 chmod +x /root/mn_scripts/snd_addnode.sh
 /root/mn_scripts/snd_addnode.sh
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
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_restart_services.sh > /root/mn_scripts/marc_restart_services.sh
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
 #wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_restart_services.sh > /root/mn_scripts/marc_restart_services.sh
 #chmod +755 /root/mn_scripts/marc_restart_services.sh
 #chmod +x /root/mn_scripts/marc_restart_services.sh
 /root/mn_scripts/vivo_stats.sh
}
vivo_copia()
{
 #wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/marc_replace.sh > /root/mn_scripts/marc_replace.sh
 #chmod +755 /root/mn_scripts/marc_replace.sh
 #chmod +x /root/mn_scripts/marc_replace.sh
 /root/mn_scripts/vivo_stats.sh
}
####################################################### 1x2COIN
1x2_status()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_status.sh > /root/mn_scripts/1x2_status.sh
 chmod +755 /root/mn_scripts/1x2_status.sh
 chmod +x /root/mn_scripts/1x2_status.sh
 /root/mn_scripts/1x2_status.sh
}
1x2_restart()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_restart_service.sh > /root/mn_scripts/1x2_restart_services.sh
 chmod +755 /root/mn_scripts/1x2_restart_services.sh
 chmod +x /root/mn_scripts/1x2_restart_services.sh
 /root/mn_scripts/1x2_restart_services.sh
}
1x2_copia()
{
 wget -qO - https://raw.githubusercontent.com/way76/mn_maintenance/master/1x2_replace.sh > /root/mn_scripts/1x2_replace.sh
 chmod +755 /root/mn_scripts/1x2_replace.sh
 chmod +x /root/mn_scripts/1x2_replace.sh
 /root/mn_scripts/1x2_replace.sh
}




menu_coin
