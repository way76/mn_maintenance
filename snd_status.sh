mn1b=$(sudo -Hu snodecoin-mn1 snodecoin-cli getinfo | grep blocks)
mn1s=$(sudo -Hu snodecoin-mn1 snodecoin-cli masternode status | grep message)
mn2b=$(sudo -Hu snodecoin-mn2 snodecoin-cli getinfo | grep blocks)
mn2s=$(sudo -Hu snodecoin-mn2 snodecoin-cli masternode status | grep message)

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


echo "versione 1, max $max"
stampa_out "$mn1b" "$max" "$mn1s" 1
stampa_out "$mn2b" "$max" "$mn2s" 2



