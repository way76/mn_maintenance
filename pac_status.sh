/usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf getinfo
/usr/local/bin/pacglobal-cli -datadir=/home/pacglobal-mn1/.pacglobal -conf=/home/pacglobal-mn1/.pacglobal/pacglobal.conf masternode status


mn1b=$(sudo -Hu pacglobal-mn1 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn1/.terracoincore -conf=/home/pacglobal-mn1/.terracoincore/terracoin.conf getinfo | grep blocks)
mn1s=$(sudo -Hu pacglobal-mn1 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn1/.terracoincore -conf=/home/pacglobal-mn1/.terracoincore/terracoin.conf masternode status | grep status)
mn2b=$(sudo -Hu pacglobal-mn2 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn2/.terracoincore -conf=/home/pacglobal-mn2/.terracoincore/terracoin.conf getinfo | grep blocks)
mn2s=$(sudo -Hu pacglobal-mn2 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn2/.terracoincore -conf=/home/pacglobal-mn2/.terracoincore/terracoin.conf masternode status | grep status)
mn3b=$(sudo -Hu pacglobal-mn3 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn3/.terracoincore -conf=/home/pacglobal-mn3/.terracoincore/terracoin.conf getinfo | grep blocks)
mn3s=$(sudo -Hu pacglobal-mn3 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn3/.terracoincore -conf=/home/pacglobal-mn3/.terracoincore/terracoin.conf masternode status | grep status)
mn4b=$(sudo -Hu pacglobal-mn4 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn4/.terracoincore -conf=/home/pacglobal-mn4/.terracoincore/terracoin.conf getinfo | grep blocks)
mn4s=$(sudo -Hu pacglobal-mn4 /usr/local/bin/pacglobal-cli  -datadir=/home/pacglobal-mn4/.terracoincore -conf=/home/pacglobal-mn4/.terracoincore/terracoin.conf masternode status | grep status)


echo "Masternode 1:  $mn1b - $mn1s "
echo "Masternode 2:  $mn2b - $mn2s "
echo "Masternode 3:  $mn3b - $mn3s "
echo "Masternode 4:  $mn4b - $mn4s "
