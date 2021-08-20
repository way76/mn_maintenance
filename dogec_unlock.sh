/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf stop
sleep 60
killall dogecashd -8
sleep 60
/usr/local/bin/dogecashd -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf -daemon
sleep 180
/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf walletpassphrase System128@Limpresa 99999999999 true
sleep 120
/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf walletpassphrase System128@Limpresa 99999999999 true
