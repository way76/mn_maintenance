
ripr_mn()
{
mnr=$1
mno=$2

systemctl stop marcoin-mn$mnr.service
rm /home/marcoin-mn$mnr/.marcoin/blocks -r
rm /home/marcoin-mn$mnr/.marcoin/chainstate -r
rm /home/marcoin-mn$mnr/.marcoin/sporks -r
rm /home/marcoin-mn$mnr/.marcoin/zerocoin -r
rm /home/marcoin-mn$mnr/.marcoin/backups -r
rm /home/marcoin-mn$mnr/.marcoin/database -r
rm /home/marcoin-mn$mnr/.marcoin/banlist.dat
rm /home/marcoin-mn$mnr/.marcoin/db.log
rm /home/marcoin-mn$mnr/.marcoin/fee_estimates.dat
rm /home/marcoin-mn$mnr/.marcoin/governance.dat
rm /home/marcoin-mn$mnr/.marcoin/instantsend.dat
rm /home/marcoin-mn$mnr/.marcoin/mempool.dat
rm /home/marcoin-mn$mnr/.marcoin/mncache.dat
rm /home/marcoin-mn$mnr/.marcoin/netfulfilled.dat 
rm /home/marcoin-mn$mnr/.marcoin/peers.dat
rm /home/marcoin-mn$mnr/.marcoin/sporks.dat
cd /home/marcoin-mn$mnr/.marcoin/
rm debug*.*
systemctl stop marcoin-mn$mno.service
cp -a /home/marcoin-mn$mno/.marcoin/blocks /home/marcoin-mn$mnr/.marcoin/blocks
chown -R marcoin-mn$mnr:marcoin-mn$mnr blocks
cp -a /home/marcoin-mn$mno/.marcoin/chainstate /home/marcoin-mn$mnr/.marcoin/chainstate
chown -R marcoin-mn$mnr:marcoin-mn$mnr chainstate
cp -a /home/marcoin-mn$mno/.marcoin/sporks /home/marcoin-mn$mnr/.marcoin/sporks
chown -R marcoin-mn$mnr:marcoin-mn$mnr sporks
cp -a /home/marcoin-mn$mno/.marcoin/zerocoin /home/marcoin-mn$mnr/.marcoin/zerocoin
chown -R marcoin-mn$mnr:marcoin-mn$mnr zerocoin
cp -a /home/marcoin-mn$mno/.marcoin/database /home/marcoin-mn$mnr/.marcoin/database
chown -R marcoin-mn$mnr:marcoin-mn$mnr database
cp /home/marcoin-mn$mno/.marcoin/peers.dat /home/marcoin-mn$mnr/.marcoin/peers.dat
chown -R marcoin-mn$mnr:marcoin-mn$mnr peers.dat
sleep 10
systemctl start marcoin-mn$mnr.service
cd /root
sleep 30

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
systemctl start marcoin-mn1.service
./marcoin_status.sh
}
echo "scegliere 1 per confermare" 
read azione
case $azione in
  1) copia_mn;;
  *) menu_marc;;
esac
} 
 
