#!/bin/bash
data=$(date +%F)
ora=$(date +%T)
ball_s=$(/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf getstakingstatus  | grep staking)
ball_b=$(/usr/local/bin/ballcoin-cli -datadir=/home/ballcoin-mn1/.ballcoin -conf=/home/ballcoin-mn1/.ballcoin/ballcoin.conf getbalance)

dogec_s=$(/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf getstakingstatus | grep staking_status)
dogec_b=$(/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf getstakingstatus | grep stakingbalance)
dogec_b1=$(/usr/local/bin/dogecash-cli -datadir=/home/dogecash-mn1/.dogecash -conf=/home/dogecash-mn1/.dogecash/dogecash.conf getinfo | grep balance)

block_s=$(/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getstakingstatus | grep status)
block_b=$(/usr/local/bin/blocknet-cli -datadir=/home/block/.block -conf=/home/block/.block/block.conf getbalance)

stringa="$data $ora - $ball_s saldo: $ball_b -$dogec_s $dogec_b $dogec_b1 -$block_s balance:$block_b"

echo $stringa >> /root/staking_balances/saldi.txt
