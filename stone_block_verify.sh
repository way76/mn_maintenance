#!/bin/bash

BLOCCO=365000
EXPBLOCK=$(curl -s4 "http://explorer.stonecoin.rocks/api/getblockcount")
EXPBLOCKLOW=$(expr $EXPBLOCK - 50)
EXPBLOCKHIGH=$(expr $EXPBLOCK + 50)
BLOCKHASH=$(cd /usr/local/bin &&./stone-cli getblockhash $BLOCCO)

MNBLOCK01=$(cd /usr/local/bin &&./stone-cli getblockcount)

echo "blockhash identificato: $BLOCKHASH"

ver_MN01()
{
	if [ "$MNBLOCK01" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK01" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 01 OK " >> stone_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 01 in aggiornamento $MNBLOCK01 / $EXPBLOCK " >> stone_block_manager.log
	  cd /usr/local/bin &&./stone-cli invalidateblock $BLOCKHASH
	  systemctl stop Stone.service
    sleep 10
    systemctl start Stone.service
    sleep 30
    cd /usr/local/bin &&./stone-cli reconsiderblock $BLOCKHASH
	fi
}



ver_MN01

#echo "$(date +%F_%T) Explorer Block $EXPBLOCK.."
#echo "$(date +%F_%T) Blocco minimo $EXPBLOCKLOW.."
#echo "$(date +%F_%T) Blocco massimo $EXPBLOCKHIGH.."
#echo "$(date +%F_%T) Blocco masternode 1 $MNBLOCK01.."
