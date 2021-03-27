ripr_mn()
{
mnr=$1
mno=$2

systemctl stop ballcoin-mn$mnr.service
rm /home/ballcoin-mn$mnr/.ballcoin/blocks -r
rm /home/ballcoin-mn$mnr/.ballcoin/chainstate -r
rm /home/ballcoin-mn$mnr/.ballcoin/sporks -r
rm /home/ballcoin-mn$mnr/.ballcoin/zerocoin -r
rm /home/ballcoin-mn$mnr/.ballcoin/backups -r
rm /home/ballcoin-mn$mnr/.ballcoin/database -r
rm /home/ballcoin-mn$mnr/.ballcoin/banlist.dat
rm /home/ballcoin-mn$mnr/.ballcoin/db.log
rm /home/ballcoin-mn$mnr/.ballcoin/fee_estimates.dat
rm /home/ballcoin-mn$mnr/.ballcoin/governance.dat
rm /home/ballcoin-mn$mnr/.ballcoin/instantsend.dat
rm /home/ballcoin-mn$mnr/.ballcoin/mempool.dat
rm /home/ballcoin-mn$mnr/.ballcoin/mncache.dat
rm /home/ballcoin-mn$mnr/.ballcoin/netfulfilled.dat 
rm /home/ballcoin-mn$mnr/.ballcoin/peers.dat
rm /home/ballcoin-mn$mnr/.ballcoin/sporks.dat
cd /home/ballcoin-mn$mnr/.ballcoin/
rm debug*.*
systemctl stop ballcoin-mn$mno.service
cp -a /home/ballcoin-mn$mno/.ballcoin/blocks /home/ballcoin-mn$mnr/.ballcoin/blocks
chown -R ballcoin-mn$mnr:ballcoin-mn$mnr blocks
cp -a /home/ballcoin-mn$mno/.ballcoin/chainstate /home/ballcoin-mn$mnr/.ballcoin/chainstate
chown -R ballcoin-mn$mnr:ballcoin-mn$mnr chainstate
cp -a /home/ballcoin-mn$mno/.ballcoin/sporks /home/ballcoin-mn$mnr/.ballcoin/sporks
chown -R ballcoin-mn$mnr:ballcoin-mn$mnr sporks
cp -a /home/ballcoin-mn$mno/.ballcoin/zerocoin /home/ballcoin-mn$mnr/.ballcoin/zerocoin
chown -R ballcoin-mn$mnr:ballcoin-mn$mnr zerocoin
cp -a /home/ballcoin-mn$mno/.ballcoin/database /home/ballcoin-mn$mnr/.ballcoin/database
chown -R ballcoin-mn$mnr:ballcoin-mn$mnr database
cp /home/ballcoin-mn$mno/.ballcoin/peers.dat /home/ballcoin-mn$mnr/.ballcoin/peers.dat
chown -R ballcoin-mn$mnr:ballcoin-mn$mnr peers.dat
systemctl start ballcoin-mn$mno.service
sleep 30
systemctl start ballcoin-mn$mnr.service
cd /root
sleep 30
./ballcoin_status.sh
}

copia_mn()
{
ripr_mn "2" "1"
ripr_mn "3" "1"
ripr_mn "4" "1"
ripr_mn "5" "1"
ripr_mn "6" "1"
ripr_mn "7" "1"
ripr_mn "8" "1"
ripr_mn "9" "1"
ripr_mn "10" "1"
ripr_mn "11" "1"
ripr_mn "12" "1"
ripr_mn "13" "1"
ripr_mn "14" "1"
ripr_mn "15" "1"
ripr_mn "16" "1"
ripr_mn "17" "1"
ripr_mn "18" "1"
ripr_mn "19" "1"
ripr_mn "20" "1"
systemctl start ballcoin-mn1.service
}
echo "scegliere 1 per confermare" 
read azione
case $azione in
  1) copia_mn;;
  *) menu_ball;;
esac
} 
 
