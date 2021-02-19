systemctl stop snodecoin-mn21.service
sleep 10
systemctl start snodecoin-mn21.service
sleep 600
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn21/.snodecoin -conf=/home/snodecoin-mn21/.snodecoin/snodecoin.conf walletpassphrase Password@99Casuale 9999999999999 true
sleep 600
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn21/.snodecoin -conf=/home/snodecoin-mn21/.snodecoin/snodecoin.conf walletpassphrase Password@99Casuale 9999999999999 true
