addnode() {
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
sudo -Hu snodecoin-mn21 snodecoin-cli addnode $1 add
}

addnode "94.214.161.52:18988"
addnode "104.40.215.96:18988"
addnode "109.111.118.167:18988"
addnode "173.66.179.250:18988"
addnode "173.249.63.116:18988"
addnode "94.177.236.204:18988"
addnode "127.0.0.1:18991"
addnode "85.94.179.41:18988"
addnode "159.253.73.144:18988"
addnode "138.201.172.121:18988"
