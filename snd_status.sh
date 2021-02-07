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
#diff=$(mn1b-max)
diff=$((mn1b - max))


 if [[ "$mn1b" -lt "$min" ]]; then 
   echo -e "Masternode $pos: $mnb - $mns - ATTENZIONE mn$pos per $diff blocchi" 
 else
   echo -e "Masternode $pos: $mnb - $mns" 
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


echo "versione 2, max $max"
stampa_out "$mn1b" "$max" "$mn1s" 1
stampa_out "$mn2b" "$max" "$mn2s" 2
stampa_out "$mn3b" "$max" "$mn3s" 2
stampa_out "$mn4b" "$max" "$mn4s" 2
stampa_out "$mn5b" "$max" "$mn5s" 2
stampa_out "$mn6b" "$max" "$mn6s" 2
stampa_out "$mn7b" "$max" "$mn7s" 2
stampa_out "$mn8b" "$max" "$mn8s" 2
stampa_out "$mn9b" "$max" "$mn9s" 2
stampa_out "$mn10b" "$max" "$mn10s" 2



