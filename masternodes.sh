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
  2) echo "You chose Option 2";;
  3) echo "You chose Option 3";;
  4) echo "You chose Option 4";;
  9) exit;;
  *) echo "invalid option";;
esac
}
menu_snd()
{
echo "  1) status masternodes  "
echo "  2) restart masternodes "
echo "  3) copia masternode    "
echo "  4) torna indietro      "


read snd_azione
case $snd_azione in
  1) snd_status;menu_snd;;
  2) snd_restart;menu_snd;;
  3) snd_copia;menu_snd;;
  4) menu_coin;;
  *) menu_snd;;
esac
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
 echo "riavvio i servizi snd"
}
snd_copia()
{
 echo "copia snode masternode"
}


menu_coin
