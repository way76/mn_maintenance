addnodes() {
sudo -Hu snodecoin-mn$1 snodecoin-cli addnode $2 add
sudo -Hu snodecoin-mn$1 snodecoin-cli addnode $2 add

}

ip1="188.32.113.218:18988"
ip2="[2001:19f0:6c01:1b97:5400:1ff:0:6]:18988"

addnodes "1" $ip1
addnodes "2" $ip1
#addnodes "3", $ip1
#addnodes "4", $ip1
#addnodes "5", $ip1
#addnodes "6", $ip1
#addnodes "7", $ip1
#addnodes "8", $ip1
#addnodes "9", $ip1
#addnodes "10", $ip1
#addnodes "11", $ip1
#addnodes "12", $ip1
#addnodes "13", $ip1
#addnodes "14", $ip1
#addnodes "15", $ip1
#addnodes "16", $ip1
#addnodes "17", $ip1
#addnodes "18", $ip1
#addnodes "19", $ip1
#addnodes "20", $ip1
