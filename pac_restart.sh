attesa()
{
sleep 180

}

echo "Fermo i servizi:"
echo "1:"
systemctl stop pacglobal-mn1.service
echo "2:"
systemctl stop pacglobal-mn2.service
echo "3:"
systemctl stop pacglobal-mn3.service
echo "4:"
systemctl stop pacglobal-mn4.service

killall terracoind
echo "Attesa riavvio servizi:"
sleep 60
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start pacglobal-mn1.service
attesa
echo "2:"
systemctl start pacglobal-mn2.service
attesa
echo "3:"
systemctl start pacglobal-mn3.service
attesa
echo "4:"
systemctl start pacglobal-mn4.service
attesa
echo "Tutti i servizi sono stati avviati"
