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

max=0
   if (( $mn1b > $max )); then max=$mn1b; fi; 
   if (( $mn2b > $max )); then max=$mn2b; fi; 
   if (( $mn3b > $max )); then max=$mn3b; fi; 
   if (( $mn4b > $max )); then max=$mn4b; fi; 
   if (( $mn5b > $max )); then max=$mn5b; fi; 
   if (( $mn6b > $max )); then max=$mn6b; fi; 
   if (( $mn7b > $max )); then max=$mn7b; fi; 
   if (( $mn8b > $max )); then max=$mn8b; fi; 
   if (( $mn9b > $max )); then max=$mn9b; fi; 
   if (( $mn10b > $max )); then max=$mn10b; fi; 
   if (( $mn11b > $max )); then max=$mn11b; fi; 
   if (( $mn12b > $max )); then max=$mn12b; fi; 
   if (( $mn13b > $max )); then max=$mn13b; fi; 
   if (( $mn14b > $max )); then max=$mn14b; fi; 
   if (( $mn15b > $max )); then max=$mn15b; fi; 
   if (( $mn16b > $max )); then max=$mn16b; fi; 
   if (( $mn17b > $max )); then max=$mn17b; fi; 
   if (( $mn18b > $max )); then max=$mn18b; fi; 
   if (( $mn19b > $max )); then max=$mn19b; fi; 
   if (( $mn20b > $max )); then max=$mn20b; fi; 



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


