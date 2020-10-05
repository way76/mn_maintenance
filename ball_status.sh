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
declare -i diff
#diff=$max-$mn1b
diff=$((mn1b - max))
totdiff=$totdiff+$diff

 if [[ "$mn1b" -lt "$min" ]]; then 
   echo -e "Masternode $pos: $mnb - $mns - ATTENZIONE mn$pos per $diff blocchi" 
 else
   echo -e "Masternode $pos: $mnb - $mns" 
    fi
}

mn1b=$(sudo -Hu ballcoin-mn1 ballcoin-cli getinfo | grep blocks)
mn1s=$(sudo -Hu ballcoin-mn1 ballcoin-cli getmasternodestatus | grep message)
mn2b=$(sudo -Hu ballcoin-mn2 ballcoin-cli getinfo | grep blocks)
mn2s=$(sudo -Hu ballcoin-mn2 ballcoin-cli getmasternodestatus | grep message)
mn3b=$(sudo -Hu ballcoin-mn3 ballcoin-cli getinfo | grep blocks)
mn3s=$(sudo -Hu ballcoin-mn3 ballcoin-cli getmasternodestatus | grep message)
mn4b=$(sudo -Hu ballcoin-mn4 ballcoin-cli getinfo | grep blocks)
mn4s=$(sudo -Hu ballcoin-mn4 ballcoin-cli getmasternodestatus | grep message)
mn5b=$(sudo -Hu ballcoin-mn5 ballcoin-cli getinfo | grep blocks)
mn5s=$(sudo -Hu ballcoin-mn5 ballcoin-cli getmasternodestatus | grep message)
mn6b=$(sudo -Hu ballcoin-mn6 ballcoin-cli getinfo | grep blocks)
mn6s=$(sudo -Hu ballcoin-mn6 ballcoin-cli getmasternodestatus | grep message)
mn7b=$(sudo -Hu ballcoin-mn7 ballcoin-cli getinfo | grep blocks)
mn7s=$(sudo -Hu ballcoin-mn7 ballcoin-cli getmasternodestatus | grep message)
mn8b=$(sudo -Hu ballcoin-mn8 ballcoin-cli getinfo | grep blocks)
mn8s=$(sudo -Hu ballcoin-mn8 ballcoin-cli getmasternodestatus | grep message)
mn9b=$(sudo -Hu ballcoin-mn9 ballcoin-cli getinfo | grep blocks)
mn9s=$(sudo -Hu ballcoin-mn9 ballcoin-cli getmasternodestatus | grep message)
mn10b=$(sudo -Hu ballcoin-mn10 ballcoin-cli getinfo | grep blocks)
mn10s=$(sudo -Hu ballcoin-mn10 ballcoin-cli getmasternodestatus | grep message)
mn11b=$(sudo -Hu ballcoin-mn11 ballcoin-cli getinfo | grep blocks)
mn11s=$(sudo -Hu ballcoin-mn11 ballcoin-cli getmasternodestatus | grep message)
mn12b=$(sudo -Hu ballcoin-mn12 ballcoin-cli getinfo | grep blocks)
mn12s=$(sudo -Hu ballcoin-mn12 ballcoin-cli getmasternodestatus | grep message)
mn13b=$(sudo -Hu ballcoin-mn13 ballcoin-cli getinfo | grep blocks)
mn13s=$(sudo -Hu ballcoin-mn13 ballcoin-cli getmasternodestatus | grep message)
mn14b=$(sudo -Hu ballcoin-mn14 ballcoin-cli getinfo | grep blocks)
mn14s=$(sudo -Hu ballcoin-mn14 ballcoin-cli getmasternodestatus | grep message)
mn15b=$(sudo -Hu ballcoin-mn15 ballcoin-cli getinfo | grep blocks)
mn15s=$(sudo -Hu ballcoin-mn15 ballcoin-cli getmasternodestatus | grep message)
mn16b=$(sudo -Hu ballcoin-mn16 ballcoin-cli getinfo | grep blocks)
mn16s=$(sudo -Hu ballcoin-mn16 ballcoin-cli getmasternodestatus | grep message)
mn17b=$(sudo -Hu ballcoin-mn17 ballcoin-cli getinfo | grep blocks)
mn17s=$(sudo -Hu ballcoin-mn17 ballcoin-cli getmasternodestatus | grep message)
mn18b=$(sudo -Hu ballcoin-mn18 ballcoin-cli getinfo | grep blocks)
mn18s=$(sudo -Hu ballcoin-mn18 ballcoin-cli getmasternodestatus | grep message)
mn19b=$(sudo -Hu ballcoin-mn19 ballcoin-cli getinfo | grep blocks)
mn19s=$(sudo -Hu ballcoin-mn19 ballcoin-cli getmasternodestatus | grep message)
mn20b=$(sudo -Hu ballcoin-mn20 ballcoin-cli getinfo | grep blocks)
mn20s=$(sudo -Hu ballcoin-mn20 ballcoin-cli getmasternodestatus | grep message)

declare -i totdiff
pos=0
max=0
totdiff=0
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

echo "versione 1, max $max, differenze totali $totdiff"
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

