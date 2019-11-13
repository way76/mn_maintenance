mn1b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn1/.dogecash/dogecash.conf -datadir=/home/doge_mn1/.dogecash/ getinfo | grep blocks)
mn1s=$( /usr/local/bin/dogecash-cli -conf=/home/doge_mn1/.dogecash/dogecash.conf -datadir=/home/doge_mn1/.dogecash/ masternode status | grep message)
mn2b=$(sudo -Hu doge-mn2 dogecash-cli getinfo | grep blocks)
mn2s=$(sudo -Hu doge-mn2 dogecash-cli masternode status | grep message)
mn3b=$(sudo -Hu doge-mn3 dogecash-cli getinfo | grep blocks)
mn3s=$(sudo -Hu doge-mn3 dogecash-cli masternode status | grep message)
mn4b=$(sudo -Hu doge-mn4 dogecash-cli getinfo | grep blocks)
mn4s=$(sudo -Hu doge-mn4 dogecash-cli masternode status | grep message)
mn5b=$(sudo -Hu doge-mn5 dogecash-cli getinfo | grep blocks)
mn5s=$(sudo -Hu doge-mn5 dogecash-cli masternode status | grep message)
mn6b=$(sudo -Hu doge-mn6 dogecash-cli getinfo | grep blocks)
mn6s=$(sudo -Hu doge-mn6 dogecash-cli masternode status | grep message)
mn7b=$(sudo -Hu doge-mn7 dogecash-cli getinfo | grep blocks)
mn7s=$(sudo -Hu doge-mn7 dogecash-cli masternode status | grep message)
mn8b=$(sudo -Hu doge-mn8 dogecash-cli getinfo | grep blocks)
mn8s=$(sudo -Hu doge-mn8 dogecash-cli masternode status | grep message)
mn9b=$(sudo -Hu doge-mn9 dogecash-cli getinfo | grep blocks)
mn9s=$(sudo -Hu doge-mn9 dogecash-cli masternode status | grep message)
mn10b=$(sudo -Hu doge-mn10 dogecash-cli getinfo | grep blocks)
mn10s=$(sudo -Hu doge-mn10 dogecash-cli masternode status | grep message)
mn11b=$(sudo -Hu doge-mn11 dogecash-cli getinfo | grep blocks)
mn11s=$(sudo -Hu doge-mn11 dogecash-cli masternode status | grep message)
mn12b=$(sudo -Hu doge-mn12 dogecash-cli getinfo | grep blocks)
mn12s=$(sudo -Hu doge-mn12 dogecash-cli masternode status | grep message)
mn13b=$(sudo -Hu doge-mn13 dogecash-cli getinfo | grep blocks)
mn13s=$(sudo -Hu doge-mn13 dogecash-cli masternode status | grep message)
mn14b=$(sudo -Hu doge-mn14 dogecash-cli getinfo | grep blocks)
mn14s=$(sudo -Hu doge-mn14 dogecash-cli masternode status | grep message)
mn15b=$(sudo -Hu doge-mn15 dogecash-cli getinfo | grep blocks)
mn15s=$(sudo -Hu doge-mn15 dogecash-cli masternode status | grep message)
mn16b=$(sudo -Hu doge-mn16 dogecash-cli getinfo | grep blocks)
mn16s=$(sudo -Hu doge-mn16 dogecash-cli masternode status | grep message)
mn17b=$(sudo -Hu doge-mn17 dogecash-cli getinfo | grep blocks)
mn17s=$(sudo -Hu doge-mn17 dogecash-cli masternode status | grep message)
mn18b=$(sudo -Hu doge-mn18 dogecash-cli getinfo | grep blocks)
mn18s=$(sudo -Hu doge-mn18 dogecash-cli masternode status | grep message)
mn19b=$(sudo -Hu doge-mn19 dogecash-cli getinfo | grep blocks)
mn19s=$(sudo -Hu doge-mn19 dogecash-cli masternode status | grep message)
mn20b=$(sudo -Hu doge-mn20 dogecash-cli getinfo | grep blocks)
mn20s=$(sudo -Hu doge-mn20 dogecash-cli masternode status | grep message)




echo "Masternode 1:  $mn1b - $mn1s "
echo "Masternode 2:  $mn2b - $mn2s "
echo "Masternode 3:  $mn3b - $mn3s "
echo "Masternode 4:  $mn4b - $mn4s "
echo "Masternode 5:  $mn5b - $mn5s "
echo "Masternode 6:  $mn6b - $mn6s "
echo "Masternode 7:  $mn7b - $mn7s "
echo "Masternode 8:  $mn8b - $mn8s "
echo "Masternode 9:  $mn9b - $mn9s "
echo "Masternode 10: $mn10b - $mn10s "
echo "Masternode 11: $mn11b - $mn11s "
echo "Masternode 12: $mn12b - $mn12s "
echo "Masternode 13: $mn13b - $mn13s "
echo "Masternode 14: $mn14b - $mn14s "
echo "Masternode 15: $mn15b - $mn15s "
echo "Masternode 16: $mn16b - $mn16s "
echo "Masternode 17: $mn17b - $mn17s "
echo "Masternode 18: $mn18b - $mn18s "
echo "Masternode 19: $mn19b - $mn19s "
echo "Masternode 20: $mn20b - $mn20s "
