addnodes() {
sudo -Hu snodecoin-mn1 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn2 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn3 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn4 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn5 snodecoin-cli addnode $1 add
sudo -Hu snodecoin-mn6 snodecoin-cli addnode $1 add
}

addnodes "188.32.113.218:18988"
addnodes "[2001:19f0:6c01:1b97:5400:1ff:0:6]:18988"
