systemctl stop snodecoin-mn1.service
sleep 10
systemctl start snodecoin-mn1.service
sleep 600
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf walletpassphrase Password@99Casuale 9999999999999 true
sleep 600
/usr/local/bin/snodecoin-cli -datadir=/home/snodecoin-mn1/.snodecoin -conf=/home/snodecoin-mn1/.snodecoin/snodecoin.conf walletpassphrase Password@99Casuale 9999999999999 true
