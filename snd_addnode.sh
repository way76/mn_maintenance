addnodes() {
echo "aggiungo ip $1 alla configurazione "
echo " "
sudo -Hu snodecoin-mn1 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn2 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn3 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn4 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn5 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn6 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn7 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn8 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn9 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn10 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn11 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn12 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn13 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn14 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn15 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn16 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn17 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn18 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn19 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn20 snodecoin-cli addnode $1 add
}

addnodes "[2001:19f0:6c01:1b97:5400:1ff:0:4]:18988"
addnodes "[2001:19f0:6c01:1b97:5400:1ff:0:6]:18988"
addnodes "[2605:2700:1:1002::5]:18988"
addnodes "24.183.7.119:18988"
addnodes "[2a02:2168:a04:59f0::1]:18988"
addnodes "167.86.127.216:18988"
addnodes "77.76.136.170:18988"
addnodes "94.177.172.227:18988"

