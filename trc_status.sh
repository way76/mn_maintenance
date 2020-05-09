mn1b=$(sudo -Hu terracoin-mn1 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn1/.terracoincore -conf=/home/terracoin-mn1/.terracoincore/terracoin.conf getinfo | grep blocks)
mn1s=$(sudo -Hu terracoin-mn1 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn1/.terracoincore -conf=/home/terracoin-mn1/.terracoincore/terracoin.conf masternode status | grep status)
mn2b=$(sudo -Hu terracoin-mn2 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn2/.terracoincore -conf=/home/terracoin-mn2/.terracoincore/terracoin.conf getinfo | grep blocks)
mn2s=$(sudo -Hu terracoin-mn2 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn2/.terracoincore -conf=/home/terracoin-mn2/.terracoincore/terracoin.conf masternode status | grep status)
mn3b=$(sudo -Hu terracoin-mn3 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn3/.terracoincore -conf=/home/terracoin-mn3/.terracoincore/terracoin.conf getinfo | grep blocks)
mn3s=$(sudo -Hu terracoin-mn3 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn3/.terracoincore -conf=/home/terracoin-mn3/.terracoincore/terracoin.conf masternode status | grep status)
mn4b=$(sudo -Hu terracoin-mn4 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn4/.terracoincore -conf=/home/terracoin-mn4/.terracoincore/terracoin.conf getinfo | grep blocks)
mn4s=$(sudo -Hu terracoin-mn4 /usr/local/bin/terracoin-cli  -datadir=/home/terracoin-mn4/.terracoincore -conf=/home/terracoin-mn4/.terracoincore/terracoin.conf masternode status | grep status)
mn5b=$(sudo -Hu mnt /usr/local/bin/terracoin-cli  -datadir=/home/mnt/.terracoincore -conf=/home/mnt/.terracoincore/terracoin.conf getinfo | grep blocks)
mn5s=$(sudo -Hu mnt /usr/local/bin/terracoin-cli  -datadir=/home/mnt/.terracoincore -conf=/home/mnt/.terracoincore/terracoin.conf masternode status | grep status)


echo "Masternode 1:  $mn1b - $mn1s "
echo "Masternode 2:  $mn2b - $mn2s "
echo "Masternode 3:  $mn3b - $mn3s "
echo "Masternode 4:  $mn4b - $mn4s "
echo "Masternode 5:  $mn5b - $mn5s "
