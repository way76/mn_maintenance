ripr_mn()
{
mnr=$1

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
systemctl start ballcoin-mn$mno.service
sleep 30
systemctl start ballcoin-mn$mnr.service
}

ripristina_mn()
{
ripr_mn "1"
systemctl start ballcoin-mn1.service
}
echo "scegliere 1 per confermare" 
read azione
case $azione in
  1) ripristina_mn;;
  *) menu_ball;;
esac
} 
