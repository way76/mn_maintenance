/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf stop
sleep 60
killall ballcoind -8
sleep 60
/usr/local/bin/ballcoind -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf -daemon
sleep 180
/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf walletpassphrase Password@99Casuale 99999999999 true
sleep 120
/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf walletpassphrase Password@99Casuale 99999999999 true
