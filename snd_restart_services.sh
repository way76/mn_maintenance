attesa()
{
sleep 120

}


echo "Fermo i servizi:"
echo "1:"
systemctl stop snodecoin-mn1.service
echo "2:"
systemctl stop snodecoin-mn2.service
echo "3:"
systemctl stop snodecoin-mn3.service
echo "4:"
systemctl stop snodecoin-mn4.service
echo "5:"
systemctl stop snodecoin-mn5.service
echo "6:"
systemctl stop snodecoin-mn6.service
echo "7:"
systemctl stop snodecoin-mn7.service
echo "8:"
systemctl stop snodecoin-mn8.service
echo "9:"
systemctl stop snodecoin-mn9.service
echo "10:"
systemctl stop snodecoin-mn10.service
echo "11:"
systemctl stop snodecoin-mn11.service
echo "12:"
systemctl stop snodecoin-mn12.service
echo "13:"
systemctl stop snodecoin-mn13.service
echo "14:"
systemctl stop snodecoin-mn14.service
echo "15:"
systemctl stop snodecoin-mn15.service
echo "16:"
systemctl stop snodecoin-mn16.service
echo "17:"
systemctl stop snodecoin-mn17.service
echo "18:"
systemctl stop snodecoin-mn18.service
echo "19:"
systemctl stop snodecoin-mn19.service
echo "20:"
systemctl stop snodecoin-mn20.service

killall snodecoind
echo "Attesa riavvio servizi:"
sleep 60
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start snodecoin-mn1.service
attesa
echo "2:"
systemctl start snodecoin-mn2.service
attesa
echo "3:"
systemctl start snodecoin-mn3.service
attesa
echo "4:"
systemctl start snodecoin-mn4.service
attesa
echo "5:"
systemctl start snodecoin-mn5.service
attesa
echo "6:"
systemctl start snodecoin-mn6.service
attesa
echo "7:"
systemctl start snodecoin-mn7.service
attesa
echo "8:"
systemctl start snodecoin-mn8.service
attesa
echo "9:"
systemctl start snodecoin-mn9.service
attesa
echo "10:"
systemctl start snodecoin-mn10.service
attesa
echo "11:"
systemctl start snodecoin-mn11.service
attesa
echo "12:"
systemctl start snodecoin-mn12.service
attesa
echo "13:"
systemctl start snodecoin-mn13.service
attesa
echo "14:"
systemctl start snodecoin-mn14.service
attesa
echo "15:"
systemctl start snodecoin-mn15.service
attesa
echo "16:"
systemctl start snodecoin-mn16.service
attesa
echo "17:"
systemctl start snodecoin-mn17.service
attesa
echo "18:"
systemctl start snodecoin-mn18.service
attesa
echo "19:"
systemctl start snodecoin-mn19.service
attesa
echo "20:"
systemctl start snodecoin-mn20.service
attesa
echo "Tutti i servizi sono stati avviati"
