
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
ripr_mn "1" "2"
ripr_mn "1" "3"
ripr_mn "1" "4"
ripr_mn "1" "5"
ripr_mn "1" "6"
ripr_mn "1" "7"
ripr_mn "1" "8"
ripr_mn "1" "9"
ripr_mn "1" "10"
ripr_mn "1" "11"
ripr_mn "1" "12"
ripr_mn "1" "13"
ripr_mn "1" "14"
ripr_mn "1" "15"
ripr_mn "1" "16"
ripr_mn "1" "17"
ripr_mn "1" "18"
ripr_mn "1" "19"
ripr_mn "1" "20"
systemctl start 1x2coin-mn1.service
}
 
read azione
case $azione in
  1) copia_mn;;
  *) menu_snd;;
esac
} 
 
