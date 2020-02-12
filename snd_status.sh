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

stampa_out(){
RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"
margine=50
mnb=$1
max=$2
n=$3
mns=$4

 if [ $mnb -gt $max-$margine ]; then echo -e "Masternode $n:  ${RED}$mnb${NOCOLOR} - $mns" else
echo -e "Masternode n:  ${GREEN}$mnb${NOCOLOR} - $mns "
    fi
}

calcola_max() {
mnb=$1
max=$2

#echo "Ricevuto $mnb $max"

mn1b=${mnb##*:}
mn1b=${mn1b%,} 

  if (( $mn1b > $max )); then max=$mn1b; fi; 

echo "$max"

}


max=0
echo "versione 9"
max=$(calcola_max "$mn1b" "$max")
max=$(calcola_max "$mn2b" "$max")
max=$(calcola_max "$mn3b" "$max")
max=$(calcola_max "$mn4b" "$max")
max=$(calcola_max "$mn5b" "$max")
max=$(calcola_max "$mn6b" "$max")
max=$(calcola_max "$mn7b" "$max")
max=$(calcola_max "$mn8b" "$max")
max=$(calcola_max "$mn9b" "$max")
max=$(calcola_max "$mn10b" "$max")
max=$(calcola_max "$mn11b" "$max")
max=$(calcola_max "$mn12b" "$max")
max=$(calcola_max "$mn13b" "$max")
max=$(calcola_max "$mn14b" "$max")
max=$(calcola_max "$mn15b" "$max")
max=$(calcola_max "$mn16b" "$max")
max=$(calcola_max "$mn17b" "$max")
max=$(calcola_max "$mn18b" "$max")
max=$(calcola_max "$mn19b" "$max")
max=$(calcola_max "$mn20b" "$max")

stampa_out "$mn1b" "$max" "1" "$mn1s"
stampa_out "$mn2b" "$max" "2" "$mn2s"
stampa_out "$mn3b" "$max" "3" "$mn3s"
stampa_out "$mn4b" "$max" "4" "$mn4s"
stampa_out "$mn5b" "$max" "5" "$mn5s"
stampa_out "$mn6b" "$max" "6" "$mn6s"
stampa_out "$mn7b" "$max" "7" "$mn7s"
stampa_out "$mn8b" "$max" "8" "$mn8s"
stampa_out "$mn9b" "$max" "9" "$mn9s"
stampa_out "$mn10b" "$max" "10" "$mn10s"
stampa_out "$mn11b" "$max" "11" "$mn11s"
stampa_out "$mn12b" "$max" "12" "$mn12s"
stampa_out "$mn13b" "$max" "13" "$mn13s"
stampa_out "$mn14b" "$max" "14" "$mn14s"
stampa_out "$mn15b" "$max" "15" "$mn15s"
stampa_out "$mn16b" "$max" "16" "$mn16s"
stampa_out "$mn17b" "$max" "17" "$mn17s"
stampa_out "$mn18b" "$max" "18" "$mn18s"
stampa_out "$mn19b" "$max" "19" "$mn19s"
stampa_out "$mn20b" "$max" "20" "$mn20s"


