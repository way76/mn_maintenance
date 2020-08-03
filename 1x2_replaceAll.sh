
ripr_mn()
{
mnr=$1
mno=$2
echo "Copio il nodo $1 in $2..."

systemctl stop 1x2coin-mn$mnr.service
rm /home/1x2coin-mn$mnr/.1x2coin/blocks -r
rm /home/1x2coin-mn$mnr/.1x2coin/chainstate -r
rm /home/1x2coin-mn$mnr/.1x2coin/sporks -r
rm /home/1x2coin-mn$mnr/.1x2coin/zerocoin -r
rm /home/1x2coin-mn$mnr/.1x2coin/backups -r
rm /home/1x2coin-mn$mnr/.1x2coin/database -r
rm /home/1x2coin-mn$mnr/.1x2coin/banlist.dat
rm /home/1x2coin-mn$mnr/.1x2coin/db.log
rm /home/1x2coin-mn$mnr/.1x2coin/fee_estimates.dat
rm /home/1x2coin-mn$mnr/.1x2coin/governance.dat
rm /home/1x2coin-mn$mnr/.1x2coin/instantsend.dat
rm /home/1x2coin-mn$mnr/.1x2coin/mempool.dat
rm /home/1x2coin-mn$mnr/.1x2coin/mncache.dat
rm /home/1x2coin-mn$mnr/.1x2coin/netfulfilled.dat 
rm /home/1x2coin-mn$mnr/.1x2coin/peers.dat
rm /home/1x2coin-mn$mnr/.1x2coin/sporks.dat
cd /home/1x2coin-mn$mnr/.1x2coin/
rm debug*.*
systemctl stop 1x2coin-mn$mno.service
cp -a /home/1x2coin-mn$mno/.1x2coin/blocks /home/1x2coin-mn$mnr/.1x2coin/blocks
chown -R 1x2coin-mn$mnr:1x2coin-mn$mnr blocks
cp -a /home/1x2coin-mn$mno/.1x2coin/chainstate /home/1x2coin-mn$mnr/.1x2coin/chainstate
chown -R 1x2coin-mn$mnr:1x2coin-mn$mnr chainstate
cp -a /home/1x2coin-mn$mno/.1x2coin/sporks /home/1x2coin-mn$mnr/.1x2coin/sporks
chown -R 1x2coin-mn$mnr:1x2coin-mn$mnr sporks
cp -a /home/1x2coin-mn$mno/.1x2coin/zerocoin /home/1x2coin-mn$mnr/.1x2coin/zerocoin
chown -R 1x2coin-mn$mnr:1x2coin-mn$mnr zerocoin
cp -a /home/1x2coin-mn$mno/.1x2coin/database /home/1x2coin-mn$mnr/.1x2coin/database
chown -R 1x2coin-mn$mnr:1x2coin-mn$mnr database
cp /home/1x2coin-mn$mno/.1x2coin/peers.dat /home/1x2coin-mn$mnr/.1x2coin/peers.dat
chown -R 1x2coin-mn$mnr:1x2coin-mn$mnr peers.dat
systemctl start 1x2coin-mn$mnr.service
sleep 90

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
systemctl start 1x2coin-mn1.service
}
echo "scegliere 1 per confermare" 
read azione
case $azione in
  1) copia_mn;;
  *) menu_snd;;
esac
} 
 
