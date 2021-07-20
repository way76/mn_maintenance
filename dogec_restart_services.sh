attesa()
{
sleep 120

}

ferma_tutti_dogec()
{
  killall dogecashd -8
}

restart_service() {
mnb=$1
pos=$1
#max=$2
echo "riavvio del servizio $pos in corso..."
echo -e "systemctl stop doge_mn$pos.service"
echo -e "systemctl start doge_mn$pos.service"
attesa
}


echo "Fermo i servizi:"
restart_service "1"
restart_service "2"
restart_service "3"
restart_service "4"
restart_service "5"
restart_service "6"
restart_service "7"
restart_service "8"
restart_service "9"
restart_service "10"
restart_service "11"
restart_service "12"
restart_service "13"
restart_service "14"
restart_service "15"
restart_service "16"
restart_service "17"
restart_service "18"
restart_service "19"
restart_service "20"
restart_service "21"


echo "Tutti i servizi sono stati avviati"
