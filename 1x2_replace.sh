


ripr_mn()
{
mnr=$1
mno=$2

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
systemctl start 1x2coin-mn$mno.service
sleep 30
systemctl start 1x2coin-mn$mnr.service
cd /root
sleep 30
./snd_addnodes.sh
./snd_status.sh
 

}
 
read -n 2 -p "Copiare:" mno
read -n 2 -p "In:" mnd

ripr_mn "$mnd" "$mno"
