mn1b=$(sudo -Hu snodecoin-mn1 snodecoin-cli getinfo | grep blocks)
mn1s=$(sudo -Hu snodecoin-mn1 snodecoin-cli masternode status | grep message)
mn2b=$(sudo -Hu snodecoin-mn2 snodecoin-cli getinfo | grep blocks)
mn2s=$(sudo -Hu snodecoin-mn2 snodecoin-cli masternode status | grep message)
mn3b=$(sudo -Hu snodecoin-mn3 snodecoin-cli getinfo | grep blocks)
mn3s=$(sudo -Hu snodecoin-mn3 snodecoin-cli masternode status | grep message)
mn4b=$(sudo -Hu snodecoin-mn4 snodecoin-cli getinfo | grep blocks)
mn4s=$(sudo -Hu snodecoin-mn4 snodecoin-cli masternode status | grep message)
mn5b=$(sudo -Hu snodecoin-mn5 snodecoin-cli getinfo | grep blocks)
mn5s=$(sudo -Hu snodecoin-mn5 snodecoin-cli masternode status | grep message)
mn6b=$(sudo -Hu snodecoin-mn6 snodecoin-cli getinfo | grep blocks)
mn6s=$(sudo -Hu snodecoin-mn6 snodecoin-cli masternode status | grep message)
mn7b=$(sudo -Hu snodecoin-mn7 snodecoin-cli getinfo | grep blocks)
mn7s=$(sudo -Hu snodecoin-mn7 snodecoin-cli masternode status | grep message)
mn8b=$(sudo -Hu snodecoin-mn8 snodecoin-cli getinfo | grep blocks)
mn8s=$(sudo -Hu snodecoin-mn8 snodecoin-cli masternode status | grep message)
mn9b=$(sudo -Hu snodecoin-mn9 snodecoin-cli getinfo | grep blocks)
mn9s=$(sudo -Hu snodecoin-mn9 snodecoin-cli masternode status | grep message)
mn10b=$(sudo -Hu snodecoin-mn10 snodecoin-cli getinfo | grep blocks)
mn10s=$(sudo -Hu snodecoin-mn10 snodecoin-cli masternode status | grep message)
mn11b=$(sudo -Hu snodecoin-mn11 snodecoin-cli getinfo | grep blocks)
mn11s=$(sudo -Hu snodecoin-mn11 snodecoin-cli masternode status | grep message)
mn12b=$(sudo -Hu snodecoin-mn12 snodecoin-cli getinfo | grep blocks)
mn12s=$(sudo -Hu snodecoin-mn12 snodecoin-cli masternode status | grep message)
mn13b=$(sudo -Hu snodecoin-mn13 snodecoin-cli getinfo | grep blocks)
mn13s=$(sudo -Hu snodecoin-mn13 snodecoin-cli masternode status | grep message)
mn14b=$(sudo -Hu snodecoin-mn14 snodecoin-cli getinfo | grep blocks)
mn14s=$(sudo -Hu snodecoin-mn14 snodecoin-cli masternode status | grep message)
mn15b=$(sudo -Hu snodecoin-mn15 snodecoin-cli getinfo | grep blocks)
mn15s=$(sudo -Hu snodecoin-mn15 snodecoin-cli masternode status | grep message)
mn16b=$(sudo -Hu snodecoin-mn16 snodecoin-cli getinfo | grep blocks)
mn16s=$(sudo -Hu snodecoin-mn16 snodecoin-cli masternode status | grep message)
mn17b=$(sudo -Hu snodecoin-mn17 snodecoin-cli getinfo | grep blocks)
mn17s=$(sudo -Hu snodecoin-mn17 snodecoin-cli masternode status | grep message)
mn18b=$(sudo -Hu snodecoin-mn18 snodecoin-cli getinfo | grep blocks)
mn18s=$(sudo -Hu snodecoin-mn18 snodecoin-cli masternode status | grep message)
mn19b=$(sudo -Hu snodecoin-mn19 snodecoin-cli getinfo | grep blocks)
mn19s=$(sudo -Hu snodecoin-mn19 snodecoin-cli masternode status | grep message)
mn20b=$(sudo -Hu snodecoin-mn20 snodecoin-cli getinfo | grep blocks)
mn20s=$(sudo -Hu snodecoin-mn20 snodecoin-cli masternode status | grep message)


calcola_max() {

mnb=${$1%,}
mnb=${$1##*:}

  if (( $mnb > $2 )); then max=$1; fi; 

echo $max

}


max=0
echo "Valore m1 rilevato: " $(calcola_max $mn1b $max)
echo "Valore m2 rilevato: " $(calcola_max $mn2b $max)
echo "Valore m3 rilevato: " $(calcola_max $mn3b $max)


echo "Valore massimo rilevato: $max"


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


