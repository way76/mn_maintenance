


ripr_mn()
{
mnr=$1
mno=$2

systemctl stop snodecoin-mn$mnr.service
rm /home/snodecoin-mn$mnr/.snodecoin/blocks -r
rm /home/snodecoin-mn$mnr/.snodecoin/chainstate -r
rm /home/snodecoin-mn$mnr/.snodecoin/sporks -r
rm /home/snodecoin-mn$mnr/.snodecoin/zerocoin -r
rm /home/snodecoin-mn$mnr/.snodecoin/backups -r
rm /home/snodecoin-mn$mnr/.snodecoin/database -r
rm /home/snodecoin-mn$mnr/.snodecoin/banlist.dat
rm /home/snodecoin-mn$mnr/.snodecoin/db.log
rm /home/snodecoin-mn$mnr/.snodecoin/fee_estimates.dat
rm /home/snodecoin-mn$mnr/.snodecoin/governance.dat
rm /home/snodecoin-mn$mnr/.snodecoin/instantsend.dat
rm /home/snodecoin-mn$mnr/.snodecoin/mempool.dat
rm /home/snodecoin-mn$mnr/.snodecoin/mncache.dat
rm /home/snodecoin-mn$mnr/.snodecoin/netfulfilled.dat 
rm /home/snodecoin-mn$mnr/.snodecoin/peers.dat
rm /home/snodecoin-mn$mnr/.snodecoin/sporks.dat
cd /home/snodecoin-mn$mnr/.snodecoin/
rm debug*.*
#systemctl start snodecoin-mn4.service
#cd /root
#sleep 30
#./snd_addnodes.sh
#./snd_status.sh
 

}
 
read -n 2 -p "Copiare:" mno
read -n 2 -p "In:" mnd

ripr_mn "$mnd" "$mno"
