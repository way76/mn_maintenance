attesa()
{
sleep 180

}


killall marcoind -8
killall marcoind -8
echo "Fermo i servizi:"
echo "1:"
systemctl stop marcoin-mn1.service
echo "2:"
systemctl stop marcoin-mn2.service
echo "3:"
systemctl stop marcoin-mn3.service
echo "4:"
systemctl stop marcoin-mn4.service
echo "5:"
systemctl stop marcoin-mn5.service
echo "6:"
systemctl stop marcoin-mn6.service
echo "7:"
systemctl stop marcoin-mn7.service
echo "8:"
systemctl stop marcoin-mn8.service
echo "9:"
systemctl stop marcoin-mn9.service
echo "10:"
systemctl stop marcoin-mn10.service
echo "11:"
systemctl stop marcoin-mn11.service
echo "12:"
systemctl stop marcoin-mn12.service
echo "13:"
systemctl stop marcoin-mn13.service
echo "14:"
systemctl stop marcoin-mn14.service
echo "15:"
systemctl stop marcoin-mn15.service
echo "16:"
systemctl stop marcoin-mn16.service
echo "17:"
systemctl stop marcoin-mn17.service
echo "18:"
systemctl stop marcoin-mn18.service
echo "19:"
systemctl stop marcoin-mn19.service
echo "20:"
systemctl stop marcoin-mn20.service

killall marcoind
echo "Attesa riavvio servizi:"
sleep 60
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start marcoin-mn1.service
attesa
echo "2:"
systemctl start marcoin-mn2.service
attesa
echo "3:"
systemctl start marcoin-mn3.service
attesa
echo "4:"
systemctl start marcoin-mn4.service
attesa
echo "5:"
systemctl start marcoin-mn5.service
attesa
echo "6:"
systemctl start marcoin-mn6.service
attesa
echo "7:"
systemctl start marcoin-mn7.service
attesa
echo "8:"
systemctl start marcoin-mn8.service
attesa
echo "9:"
systemctl start marcoin-mn9.service
attesa
echo "10:"
systemctl start marcoin-mn10.service
attesa
echo "11:"
systemctl start marcoin-mn11.service
attesa
echo "12:"
systemctl start marcoin-mn12.service
attesa
echo "13:"
systemctl start marcoin-mn13.service
attesa
echo "14:"
systemctl start marcoin-mn14.service
attesa
echo "15:"
systemctl start marcoin-mn15.service
attesa
echo "16:"
systemctl start marcoin-mn16.service
attesa
echo "17:"
systemctl start marcoin-mn17.service
attesa
echo "18:"
systemctl start marcoin-mn18.service
attesa
echo "19:"
systemctl start marcoin-mn19.service
attesa
echo "20:"
systemctl start marcoin-mn20.service
attesa
echo "Tutti i servizi sono stati avviati"
