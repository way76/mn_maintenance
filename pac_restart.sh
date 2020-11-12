
systemctl restart pacglobal-mn1.service
sleep 180
/usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf walletpassphrase Password@99Casuale 999999999999
/usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf setstaking true
sleep 180
/usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf setstaking true
