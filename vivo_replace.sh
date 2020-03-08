ripr_mn()
{
mnr=$1
mno=$2

systemctl stop vivo-n$mnr.service
rm /var/lib/masternodes/vivo$mnr/blocks -r
rm /var/lib/masternodes/vivo$mnr/chainstate -r
rm /var/lib/masternodes/vivo$mnr/database -r
rm /var/lib/masternodes/vivo$mnr/db.log
rm /var/lib/masternodes/vivo$mnr/debug.log
rm /var/lib/masternodes/vivo$mnr/fee_estimate.dat
rm /var/lib/masternodes/vivo$mnr/governance.dat
rm /var/lib/masternodes/vivo$mnr/mncache.dat
rm /var/lib/masternodes/vivo$mnr/mnpayments.dat
rm /var/lib/masternodes/vivo$mnr/netfulfilled.dat
rm /var/lib/masternodes/vivo$mnr/peers.dat

systemctl stop vivo-n$mno.service
cp -a /var/lib/masternodes/vivo$mno/blocks /var/lib/masternodes/vivo$mnr/blocks
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/blocks
cp -a /var/lib/masternodes/vivo$mno/chainstate /var/lib/masternodes/vivo$mnr/chainstate
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/chainstate
cp -a /var/lib/masternodes/vivo$mno/database /var/lib/masternodes/vivo$mnr/database
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/database
systemctl start snodecoin-mn$mno.service
sleep 30
systemctl start vivo-n$mnr.service
cd /root
}
 
read -n 2 -p "Copiare:" mno
read -n 2 -p "In:" mnd

ripr_mn "$mnd" "$mno"
