calcola_max() {
mnb=$1
max=$2

#echo "Ricevuto $mnb $max"

mn1b=${mnb##*:}
mn1b=${mn1b%,} 

  if (( $mn1b > $max )); then max=$mn1b; fi; 

echo "$max"

}

stampa_out(){
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'


margine=50
mnb=$1
max=$2
mns=$3
min=$max-$margine
pos=$4
mn1b=${mnb##*:}
mn1b=${mn1b%,} 
diff=$($max-$mn1b)


 if [[ "$mn1b" -lt "$min" ]]; then 
   echo -e "Masternode $pos: $mnb - $mns - ATTENZIONE mn$pos per $diff blocchi" 
 else
   echo -e "Masternode $pos: $mnb - $mns" 
    fi
}

mn1b=$(sudo -Hu 1x2coin-mn1 1x2coin-cli getinfo | grep blocks)
mn1s=$(sudo -Hu 1x2coin-mn1 1x2coin-cli getmasternodestatus | grep message)
mn2b=$(sudo -Hu 1x2coin-mn2 1x2coin-cli getinfo | grep blocks)
mn2s=$(sudo -Hu 1x2coin-mn2 1x2coin-cli getmasternodestatus | grep message)
mn3b=$(sudo -Hu 1x2coin-mn3 1x2coin-cli getinfo | grep blocks)
mn3s=$(sudo -Hu 1x2coin-mn3 1x2coin-cli getmasternodestatus | grep message)
mn4b=$(sudo -Hu 1x2coin-mn4 1x2coin-cli getinfo | grep blocks)
mn4s=$(sudo -Hu 1x2coin-mn4 1x2coin-cli getmasternodestatus | grep message)
mn5b=$(sudo -Hu 1x2coin-mn5 1x2coin-cli getinfo | grep blocks)
mn5s=$(sudo -Hu 1x2coin-mn5 1x2coin-cli getmasternodestatus | grep message)
mn6b=$(sudo -Hu 1x2coin-mn6 1x2coin-cli getinfo | grep blocks)
mn6s=$(sudo -Hu 1x2coin-mn6 1x2coin-cli getmasternodestatus | grep message)
mn7b=$(sudo -Hu 1x2coin-mn7 1x2coin-cli getinfo | grep blocks)
mn7s=$(sudo -Hu 1x2coin-mn7 1x2coin-cli getmasternodestatus | grep message)
mn8b=$(sudo -Hu 1x2coin-mn8 1x2coin-cli getinfo | grep blocks)
mn8s=$(sudo -Hu 1x2coin-mn8 1x2coin-cli getmasternodestatus | grep message)
mn9b=$(sudo -Hu 1x2coin-mn9 1x2coin-cli getinfo | grep blocks)
mn9s=$(sudo -Hu 1x2coin-mn9 1x2coin-cli getmasternodestatus | grep message)
mn10b=$(sudo -Hu 1x2coin-mn10 1x2coin-cli getinfo | grep blocks)
mn10s=$(sudo -Hu 1x2coin-mn10 1x2coin-cli getmasternodestatus | grep message)
mn11b=$(sudo -Hu 1x2coin-mn11 1x2coin-cli getinfo | grep blocks)
mn11s=$(sudo -Hu 1x2coin-mn11 1x2coin-cli getmasternodestatus | grep message)
mn12b=$(sudo -Hu 1x2coin-mn12 1x2coin-cli getinfo | grep blocks)
mn12s=$(sudo -Hu 1x2coin-mn12 1x2coin-cli getmasternodestatus | grep message)
mn13b=$(sudo -Hu 1x2coin-mn13 1x2coin-cli getinfo | grep blocks)
mn13s=$(sudo -Hu 1x2coin-mn13 1x2coin-cli getmasternodestatus | grep message)
mn14b=$(sudo -Hu 1x2coin-mn14 1x2coin-cli getinfo | grep blocks)
mn14s=$(sudo -Hu 1x2coin-mn14 1x2coin-cli getmasternodestatus | grep message)
mn15b=$(sudo -Hu 1x2coin-mn15 1x2coin-cli getinfo | grep blocks)
mn15s=$(sudo -Hu 1x2coin-mn15 1x2coin-cli getmasternodestatus | grep message)
mn16b=$(sudo -Hu 1x2coin-mn16 1x2coin-cli getinfo | grep blocks)
mn16s=$(sudo -Hu 1x2coin-mn16 1x2coin-cli getmasternodestatus | grep message)
mn17b=$(sudo -Hu 1x2coin-mn17 1x2coin-cli getinfo | grep blocks)
mn17s=$(sudo -Hu 1x2coin-mn17 1x2coin-cli getmasternodestatus | grep message)
mn18b=$(sudo -Hu 1x2coin-mn18 1x2coin-cli getinfo | grep blocks)
mn18s=$(sudo -Hu 1x2coin-mn18 1x2coin-cli getmasternodestatus | grep message)
mn19b=$(sudo -Hu 1x2coin-mn19 1x2coin-cli getinfo | grep blocks)
mn19s=$(sudo -Hu 1x2coin-mn19 1x2coin-cli getmasternodestatus | grep message)
mn20b=$(sudo -Hu 1x2coin-mn20 1x2coin-cli getinfo | grep blocks)
mn20s=$(sudo -Hu 1x2coin-mn20 1x2coin-cli getmasternodestatus | grep message)


pos=0
max=0
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

echo "versione 1, max $max"
stampa_out "$mn1b" "$max" "$mn1s" 1
stampa_out "$mn2b" "$max" "$mn2s" 2
stampa_out "$mn3b" "$max" "$mn3s" 3
stampa_out "$mn4b" "$max" "$mn4s" 4
stampa_out "$mn5b" "$max" "$mn5s" 5
stampa_out "$mn6b" "$max" "$mn6s" 6
stampa_out "$mn7b" "$max" "$mn7s" 7
stampa_out "$mn8b" "$max" "$mn8s" 8
stampa_out "$mn9b" "$max" "$mn9s" 9
stampa_out "$mn10b" "$max" "$mn10s" 10
stampa_out "$mn11b" "$max" "$mn11s" 11
stampa_out "$mn12b" "$max" "$mn12s" 12
stampa_out "$mn13b" "$max" "$mn13s" 13
stampa_out "$mn14b" "$max" "$mn14s" 14
stampa_out "$mn15b" "$max" "$mn15s" 15
stampa_out "$mn16b" "$max" "$mn16s" 16
stampa_out "$mn17b" "$max" "$mn17s" 17
stampa_out "$mn18b" "$max" "$mn18s" 18
stampa_out "$mn19b" "$max" "$mn19s" 19
stampa_out "$mn20b" "$max" "$mn20s" 20

