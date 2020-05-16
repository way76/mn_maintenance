
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
#diff=$(mn1b-max)
diff=$((mn1b - max))

 if [[ "$mn1b" -lt "$min" ]]; then 
   echo -e "Masternode $pos: $mnb - $mns - ATTENZIONE mn$pos per $diff blocchi" 
 else
   echo -e "Masternode $pos: $mnb - $mns" 
    fi
}



mn1b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn1/.dogecash/dogecash.conf -datadir=/home/doge_mn1/.dogecash/ getinfo | grep blocks)
mn1s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn1/.dogecash/dogecash.conf -datadir=/home/doge_mn1/.dogecash/ getmasternodestatus | grep message)
mn2b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn2/.dogecash/dogecash.conf -datadir=/home/doge_mn2/.dogecash/ getinfo | grep blocks)
mn2s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn2/.dogecash/dogecash.conf -datadir=/home/doge_mn2/.dogecash/ getmasternodestatus | grep message)
mn3b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn3/.dogecash/dogecash.conf -datadir=/home/doge_mn3/.dogecash/ getinfo | grep blocks)
mn3s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn3/.dogecash/dogecash.conf -datadir=/home/doge_mn3/.dogecash/ getmasternodestatus | grep message)
mn4b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn4/.dogecash/dogecash.conf -datadir=/home/doge_mn4/.dogecash/ getinfo | grep blocks)
mn4s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn4/.dogecash/dogecash.conf -datadir=/home/doge_mn4/.dogecash/ getmasternodestatus | grep message)
mn5b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn5/.dogecash/dogecash.conf -datadir=/home/doge_mn5/.dogecash/ getinfo | grep blocks)
mn5s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn5/.dogecash/dogecash.conf -datadir=/home/doge_mn5/.dogecash/ getmasternodestatus | grep message)
mn6b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn6/.dogecash/dogecash.conf -datadir=/home/doge_mn6/.dogecash/ getinfo | grep blocks)
mn6s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn6/.dogecash/dogecash.conf -datadir=/home/doge_mn6/.dogecash/ getmasternodestatus | grep message)
mn7b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn7/.dogecash/dogecash.conf -datadir=/home/doge_mn7/.dogecash/ getinfo | grep blocks)
mn7s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn7/.dogecash/dogecash.conf -datadir=/home/doge_mn7/.dogecash/ getmasternodestatus | grep message)
mn8b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn8/.dogecash/dogecash.conf -datadir=/home/doge_mn8/.dogecash/ getinfo | grep blocks)
mn8s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn8/.dogecash/dogecash.conf -datadir=/home/doge_mn8/.dogecash/ getmasternodestatus | grep message)
mn9b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn9/.dogecash/dogecash.conf -datadir=/home/doge_mn9/.dogecash/ getinfo | grep blocks)
mn9s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn9/.dogecash/dogecash.conf -datadir=/home/doge_mn9/.dogecash/ getmasternodestatus | grep message)
mn10b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn10/.dogecash/dogecash.conf -datadir=/home/doge_mn10/.dogecash/ getinfo | grep blocks)
mn10s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn10/.dogecash/dogecash.conf -datadir=/home/doge_mn10/.dogecash/ getmasternodestatus | grep message)
mn11b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn11/.dogecash/dogecash.conf -datadir=/home/doge_mn11/.dogecash/ getinfo | grep blocks)
mn11s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn11/.dogecash/dogecash.conf -datadir=/home/doge_mn11/.dogecash/ getmasternodestatus | grep message)
mn12b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn12/.dogecash/dogecash.conf -datadir=/home/doge_mn12/.dogecash/ getinfo | grep blocks)
mn12s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn12/.dogecash/dogecash.conf -datadir=/home/doge_mn12/.dogecash/ getmasternodestatus | grep message)
mn13b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn13/.dogecash/dogecash.conf -datadir=/home/doge_mn13/.dogecash/ getinfo | grep blocks)
mn13s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn13/.dogecash/dogecash.conf -datadir=/home/doge_mn13/.dogecash/ getmasternodestatus | grep message)
mn14b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn14/.dogecash/dogecash.conf -datadir=/home/doge_mn14/.dogecash/ getinfo | grep blocks)
mn14s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn14/.dogecash/dogecash.conf -datadir=/home/doge_mn14/.dogecash/ getmasternodestatus | grep message)
mn15b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn15/.dogecash/dogecash.conf -datadir=/home/doge_mn15/.dogecash/ getinfo | grep blocks)
mn15s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn15/.dogecash/dogecash.conf -datadir=/home/doge_mn15/.dogecash/ getmasternodestatus | grep message)
mn16b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn16/.dogecash/dogecash.conf -datadir=/home/doge_mn16/.dogecash/ getinfo | grep blocks)
mn16s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn16/.dogecash/dogecash.conf -datadir=/home/doge_mn16/.dogecash/ getmasternodestatus | grep message)
mn17b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn17/.dogecash/dogecash.conf -datadir=/home/doge_mn17/.dogecash/ getinfo | grep blocks)
mn17s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn17/.dogecash/dogecash.conf -datadir=/home/doge_mn17/.dogecash/ getmasternodestatus | grep message)
mn18b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn18/.dogecash/dogecash.conf -datadir=/home/doge_mn18/.dogecash/ getinfo | grep blocks)
mn18s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn18/.dogecash/dogecash.conf -datadir=/home/doge_mn18/.dogecash/ getmasternodestatus | grep message)
mn19b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn19/.dogecash/dogecash.conf -datadir=/home/doge_mn19/.dogecash/ getinfo | grep blocks)
mn19s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn19/.dogecash/dogecash.conf -datadir=/home/doge_mn19/.dogecash/ getmasternodestatus | grep message)
mn20b=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn20/.dogecash/dogecash.conf -datadir=/home/doge_mn20/.dogecash/ getinfo | grep blocks)
mn20s=$(/usr/local/bin/dogecash-cli -conf=/home/doge_mn20/.dogecash/dogecash.conf -datadir=/home/doge_mn20/.dogecash/ getmasternodestatus | grep message)


EXPBLOCK=$(curl -s4 "https://api.dogec.io/api/getblockcount")
echo "Explorer:__________________$EXPBLOCK blocchi"

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
