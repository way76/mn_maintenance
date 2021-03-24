attesa()
{
sleep 60

}

ferma_tutti_ball()
{
  killall ballcoind -8
}

restart_service() {
mnb=$1
pos=$1
#max=$2
echo "Arresto del servizio ballcoin_mn$pos.service"
echo -e "systemctl stop ballcoin_mn$pos.service"
attesa
echo "Avvio del servizio ballcoin_mn$pos.service"
echo -e "systemctl start ballcoin_mn$pos.service"
}


echo "Fermo i servizi:"
ferma_tutti_ball
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
