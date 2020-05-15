attesa()
{
sleep 60

}

echo "Fermo i servizi:"
echo "1:"
systemctl stop doge_mn1.service
echo "2:"
systemctl stop doge_mn2.service
echo "3:"
systemctl stop doge_mn3.service
echo "4:"
systemctl stop doge_mn4.service
echo "5:"
systemctl stop doge_mn5.service
echo "6:"
systemctl stop doge_mn6.service
echo "7:"
systemctl stop doge_mn7.service
echo "8:"
systemctl stop doge_mn8.service
echo "9:"
systemctl stop doge_mn9.service
echo "10:"
systemctl stop doge_mn10.service
echo "11:"
systemctl stop doge_mn11.service
echo "12:"
systemctl stop doge_mn12.service
echo "13:"
systemctl stop doge_mn13.service
echo "14:"
systemctl stop doge_mn14.service
echo "15:"
systemctl stop doge_mn15.service
echo "16:"
systemctl stop doge_mn16.service
echo "17:"
systemctl stop doge_mn17.service
echo "18:"
systemctl stop doge_mn18.service
echo "19:"
systemctl stop doge_mn19.service
echo "20:"
systemctl stop doge_mn20.service

killall dogecashd
echo "Attesa riavvio servizi:"
sleep 60
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start doge_mn1.service
attesa
echo "2:"
systemctl start doge_mn2.service
attesa
echo "3:"
systemctl start doge_mn3.service
attesa
echo "4:"
systemctl start doge_mn4.service
attesa
echo "5:"
systemctl start doge_mn5.service
attesa
echo "6:"
systemctl start doge_mn6.service
attesa
echo "7:"
systemctl start doge_mn7.service
attesa
echo "8:"
systemctl start doge_mn8.service
attesa
echo "9:"
systemctl start doge_mn9.service
attesa
echo "10:"
systemctl start doge_mn10.service
attesa
echo "11:"
systemctl start doge_mn11.service
attesa
echo "12:"
systemctl start doge_mn12.service
attesa
echo "13:"
systemctl start doge_mn13.service
attesa
echo "14:"
systemctl start doge_mn14.service
attesa
echo "15:"
systemctl start doge_mn15.service
attesa
echo "16:"
systemctl start doge_mn16.service
attesa
echo "17:"
systemctl start doge_mn17.service
attesa
echo "18:"
systemctl start doge_mn18.service
attesa
echo "19:"
systemctl start doge_mn19.service
attesa
echo "20:"
systemctl start doge_mn20.service
attesa
echo "Tutti i servizi sono stati avviati"
