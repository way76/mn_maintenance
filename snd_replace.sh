


ripr_mn()
{
mnr=$1
mno=$2

systemctl stop snodecoin-mn$mnr.service
rm /home/snodecoin-mn$mnr/.snodecoin/backups -r
rm /home/snodecoin-mn$mnr/.snodecoin/blocks -r
rm /home/snodecoin-mn$mnr/.snodecoin/chainstate -r
rm /home/snodecoin-mn$mnr/.snodecoin/db.log
rm /home/snodecoin-mn$mnr/.snodecoin/debug.log
rm /home/snodecoin-mn$mnr/.snodecoin/mncache.dat
rm /home/snodecoin-mn$mnr/.snodecoin/mnpayments.dat
rm /home/snodecoin-mn$mnr/.snodecoin/peers.dat
rm /home/snodecoin-mn$mnr/.snodecoin/sporks -r
rm /home/snodecoin-mn$mnr/.snodecoin/zerocoin -r
rm /home/snodecoin-mn$mnr/.snodecoin/banlist.dat
cd /home/snodecoin-mn$mnr/.snodecoin/
rm debug*.*
systemctl stop snodecoin-mn$mno.service
cp -a /home/snodecoin-mn$mno/.snodecoin/blocks /home/snodecoin-mn$mnr/.snodecoin/blocks
chown -R snodecoin-mn$mnr:snodecoin-mn$mnr blocks
cp -a /home/snodecoin-mn$mno/.snodecoin/chainstate /home/snodecoin-mn$mnr/.snodecoin/chainstate
chown -R snodecoin-mn$mnr:snodecoin-mn$mnr chainstate
cp -a /home/snodecoin-mn$mno/.snodecoin/sporks /home/snodecoin-mn$mnr/.snodecoin/sporks
chown -R snodecoin-mn$mnr:snodecoin-mn$mnr sporks
cp -a /home/snodecoin-mn$mno/.snodecoin/zerocoin /home/snodecoin-mn$mnr/.snodecoin/zerocoin
chown -R snodecoin-mn$mnr:snodecoin-mn$mnr zerocoin
cp -a /home/snodecoin-mn$mno/.snodecoin/database /home/snodecoin-mn$mnr/.snodecoin/database
chown -R snodecoin-mn$mnr:snodecoin-mn$mnr database
cp /home/snodecoin-mn$mno/.snodecoin/peers.dat /home/snodecoin-mn$mnr/.snodecoin/peers.dat
chown -R snodecoin-mn$mnr:snodecoin-mn$mnr peers.dat
systemctl start snodecoin-mn$mno.service
sleep 30
systemctl start snodecoin-mn$mnr.service
cd /root
sleep 30
./snd_status.sh
 

}
 
read -n 2 -p "Copiare:" mno
read -n 2 -p "In:" mnd

ripr_mn "$mnd" "$mno"
