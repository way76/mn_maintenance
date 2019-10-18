#!/bin/bash

BLOCCO=400000
EXPBLOCK=10000
EXPBLOCK=$(curl -s4 "http://explorer.stonecoin.rocks/api/getblockcount")
EXPBLOCKLOW=$(expr $EXPBLOCK - 50)
EXPBLOCKHIGH=$(expr $EXPBLOCK + 50)
BLOCKHASH=$(/usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf  getblockhash $BLOCCO)

MNBLOCK01=$(/usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf  getblockcount)

echo "blockhash identificato: $BLOCKHASH"

ver_MN01()
{
	if [ "$MNBLOCK01" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK01" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 01 OK " >> stone_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode in aggiornamento $MNBLOCK01 / $EXPBLOCK " >> stone_block_manager.log
	  /usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf invalidateblock $BLOCKHASH
	  /usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf  stop
    	  sleep 60
    	  /usr/local/bin/stoned -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf -daemon
    	  sleep 60
    	  /usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf reconsiderblock $BLOCKHASH
	fi
	/usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf getinfo
	/usr/local/bin/stone-cli -datadir=/home/stone-mn1/.stone -conf=/home/stone-mn1/.stone/stone.conf masternode status
}


ver_MN01
