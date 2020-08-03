ripr_mn()
{
mnr=$1
mno=$2

systemctl stop vivo_n$mnr.service
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

systemctl stop vivo_n$mno.service
cp -a /var/lib/masternodes/vivo$mno/blocks /var/lib/masternodes/vivo$mnr/blocks
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/blocks
cp -a /var/lib/masternodes/vivo$mno/chainstate /var/lib/masternodes/vivo$mnr/chainstate
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/chainstate
cp -a /var/lib/masternodes/vivo$mno/database /var/lib/masternodes/vivo$mnr/database
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/database
cp -a /var/lib/masternodes/vivo$mno/peers.dat /var/lib/masternodes/vivo$mnr/peers.dat
chown -R masternode:masternode /var/lib/masternodes/vivo$mnr/peers.dat

systemctl start vivo_n$mno.service
sleep 30
systemctl start vivo_n$mnr.service
cd /root
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
systemctl start vivo_mn1.service
}
echo "scegliere 1 per confermare" 
read azione
case $azione in
  1) copia_mn;;
  *) menu_vivo;;
esac
} 
