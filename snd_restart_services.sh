attesa()
{
sleep 120

}


echo "Fermo i servizi:"
echo "1:"
systemctl stop snodecoin-mn1.service
echo "2:"
systemctl stop snodecoin-mn2.service

killall snodecoind
echo "Attesa riavvio servizi:"
sleep 10
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start snodecoin-mn1.service
echo "Tutti i servizi sono stati avviati"
