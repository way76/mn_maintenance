killall 1x2coind
killall 1x2coind
echo "Fermo i servizi:"
echo "1:"
systemctl stop 1x2coin-mn1.service
echo "2:"
systemctl stop 1x2coin-mn2.service
echo "3:"
systemctl stop 1x2coin-mn3.service
echo "4:"
systemctl stop 1x2coin-mn4.service
echo "5:"
systemctl stop 1x2coin-mn5.service
echo "6:"
systemctl stop 1x2coin-mn6.service
echo "7:"
systemctl stop 1x2coin-mn7.service
echo "8:"
systemctl stop 1x2coin-mn8.service
echo "9:"
systemctl stop 1x2coin-mn9.service
echo "10:"
systemctl stop 1x2coin-mn10.service
echo "11:"
systemctl stop 1x2coin-mn11.service
echo "12:"
systemctl stop 1x2coin-mn12.service
echo "13:"
systemctl stop 1x2coin-mn13.service
echo "14:"
systemctl stop 1x2coin-mn14.service
echo "15:"
systemctl stop 1x2coin-mn15.service
echo "16:"
systemctl stop 1x2coin-mn16.service
echo "17:"
systemctl stop 1x2coin-mn17.service
echo "18:"
systemctl stop 1x2coin-mn18.service
echo "19:"
systemctl stop 1x2coin-mn19.service
echo "20:"
systemctl stop 1x2coin-mn20.service

killall 1x2coind
echo "Attesa riavvio servizi:"
sleep 60
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start 1x2coin-mn1.service
sleep 180
echo "2:"
systemctl start 1x2coin-mn2.service
sleep 180
echo "3:"
systemctl start 1x2coin-mn3.service
sleep 180
echo "4:"
systemctl start 1x2coin-mn4.service
sleep 180
echo "5:"
systemctl start 1x2coin-mn5.service
sleep 180
echo "6:"
systemctl start 1x2coin-mn6.service
sleep 180
echo "7:"
systemctl start 1x2coin-mn7.service
sleep 180
echo "8:"
systemctl start 1x2coin-mn8.service
sleep 180
echo "9:"
systemctl start 1x2coin-mn9.service
sleep 180
echo "10:"
systemctl start 1x2coin-mn10.service
sleep 180
echo "11:"
systemctl start 1x2coin-mn11.service
sleep 180
echo "12:"
systemctl start 1x2coin-mn12.service
sleep 180
echo "13:"
systemctl start 1x2coin-mn13.service
sleep 180
echo "14:"
systemctl start 1x2coin-mn14.service
sleep 180
echo "15:"
systemctl start 1x2coin-mn15.service
sleep 180
echo "16:"
systemctl start 1x2coin-mn16.service
sleep 180
echo "17:"
systemctl start 1x2coin-mn17.service
sleep 180
echo "18:"
systemctl start 1x2coin-mn18.service
sleep 180
echo "19:"
systemctl start 1x2coin-mn19.service
sleep 180
echo "20:"
systemctl start 1x2coin-mn20.service
sleep 180
echo "Tutti i servizi sono stati avviati"
