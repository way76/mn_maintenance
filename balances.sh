#!/bin/bash
data=$(date +%F)
ora=$(date +%T)
ball_s=$(/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf getstakingstatus  | grep staking)
ball_b=$(/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf getbalance)

ball_s="${ball_s:20:4}"
ball_b="${ball_b:0:9}"

dogec_s=$(/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf getstakingstatus | grep staking_status)
dogec_b=$(/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf getstakingstatus | grep stakingbalance)
dogec_b1=$(/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf getinfo | grep balance)

dogec_s="${dogec_s:20:4}"
dogec_b="${dogec_b:20:9}"
dogec_b1="${dogec_b1:13:9}"


block_s=$(/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getstakingstatus | grep status)
block_b=$(/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getbalance)

block_s="${block_s:24:6}"
block_b="${block_b:0:9}"


divi_s=$(/usr/local/bin/divi-cli -datadir=/home/divi/.divi -conf=/home/divi/.divi/divi.conf getinfo  | grep staking)
divi_b=$(/usr/local/bin/divi-cli -datadir=/home/divi/.divi -conf=/home/divi/.divi/divi.conf getinfo  | grep balance)

divi_s="${divi_s:32:6}"
divi_b="${divi_b:16:9}"


stringa="$data $ora - BALL: $ball_s: $ball_b DOGEC: $dogec_s:$dogec_b-$dogec_b1 BLOCK:$block_s:$block_b DIVI:$divi_s $divi_b\n"

echo -n -e $stringa | cat -  /root/staking_balances/saldi.txt > /root/staking_balances/saldiT.txt
mv /root/staking_balances/saldiT.txt /root/staking_balances/saldi.txt
