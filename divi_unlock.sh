
/usr/local/bin/divi-cli -datadir=/home/divi/.divi -conf=/home/divi/.divi/divi.conf stop
sleep 60
killall divid -8
sleep 60
/usr/local/bin/divid -datadir=/home/divi/.divi -conf=/home/divi/.divi/divi.conf -daemon
sleep 180
/usr/local/bin/divi-cli -datadir=/home/divi/.divi -conf=/home/divi/.divi/divi.conf walletpassphrase System128@Limpresa 99999999999 true
sleep 120
/usr/local/bin/divi-cli -datadir=/home/divi/.divi -conf=/home/divi/.divi/divi.conf walletpassphrase System128@Limpresa 99999999999 true
