/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf stop
sleep 60
killall blocknetd -8
sleep 60
/usr/local/bin/blocknetd -datadir=/home/block/.block -conf=/home/block/.block/block.conf -daemon
sleep 180
/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf walletpassphrase System128@Limpresa 99999999999 true
sleep 120
/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf walletpassphrase System128@Limpresa 99999999999 true
