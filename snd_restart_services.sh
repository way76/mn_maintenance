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
systemctl stop snodecoin-mn6.service
systemctl stop snodecoin-mn7.service
systemctl stop snodecoin-mn8.service
systemctl stop snodecoin-mn9.service
systemctl stop snodecoin-mn10.service
systemctl stop snodecoin-mn11.service
systemctl stop snodecoin-mn12.service
systemctl stop snodecoin-mn13.service
systemctl stop snodecoin-mn14.service
systemctl stop snodecoin-mn15.service
systemctl stop snodecoin-mn16.service
systemctl stop snodecoin-mn17.service
systemctl stop snodecoin-mn18.service
systemctl stop snodecoin-mn19.service
systemctl stop snodecoin-mn20.service

killall snodecoind
echo "Avvio nuovamente i servizi:"
echo "1:"
systemctl start snodecoin-mn1.service
sleep 180
echo "2:"
systemctl start snodecoin-mn2.service
sleep 180
echo "3:"
systemctl start snodecoin-mn3.service
sleep 180
systemctl start snodecoin-mn4.service
sleep 180
systemctl start snodecoin-mn5.service
sleep 180
systemctl start snodecoin-mn6.service
sleep 180
systemctl start snodecoin-mn7.service
sleep 180
systemctl start snodecoin-mn8.service
sleep 180
systemctl start snodecoin-mn9.service
sleep 180
systemctl start snodecoin-mn10.service
sleep 180
systemctl start snodecoin-mn11.service
sleep 180
systemctl start snodecoin-mn12.service
sleep 180
systemctl start snodecoin-mn13.service
sleep 180
systemctl start snodecoin-mn14.service
sleep 180
systemctl start snodecoin-mn15.service
sleep 180
systemctl start snodecoin-mn16.service
sleep 180
systemctl start snodecoin-mn17.service
sleep 180
systemctl start snodecoin-mn18.service
sleep 180
systemctl start snodecoin-mn19.service
sleep 180
systemctl start snodecoin-mn20.service
sleep 180
