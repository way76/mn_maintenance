#!/bin/bash

menu_coin()
{
echo "Scegliere il menu del coin"
echo "  1) Snodecoin "
echo "  2) Marcoin   "
echo "  3) PacGlobal "
echo "  4) Dogecash  "
echo "  9) Exit      "

read coin
case $coin in
  1) menu_snd;;
  2) menu_marc;;
  3) echo "You chose Option 3";;
  4) echo "You chose Option 4";;
  9) exit;;
  *) echo "invalid option";;
esac
}
menu_snd()
{
echo "  SNODECOIn "
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
echo "  MARCOIN "
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


menu_coin
