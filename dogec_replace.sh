ripr_mn()
{
mnr=$1
mno=$2

systemctl stop doge_mn$mnr.service
rm /home/doge_mn$mnr/.dogecash/backups -r
rm /home/doge_mn$mnr/.dogecash/banlist.dat
rm /home/doge_mn$mnr/.dogecash/blocks -r
rm /home/doge_mn$mnr/.dogecash/chainstate -r
rm /home/doge_mn$mnr/.dogecash/budget.dat
rm /home/doge_mn$mnr/.dogecash/db.log
rm /home/doge_mn$mnr/.dogecash/debug*
rm /home/doge_mn$mnr/.dogecash/fee_estimates.dat
rm /home/doge_mn$mnr/.dogecash/mnpayments.dat
rm /home/doge_mn$mnr/.dogecash/peers.dat
rm /home/doge_mn$mnr/.dogecash/sporks -r
rm /home/doge_mn$mnr/.dogecash/zerocoin -r
cd /home/doge_mn$mnr/.dogecash/

systemctl stop doge_mn$mno.service
cp -a /home/doge_mn$mno/.dogecash/blocks /home/doge_mn$mnr/.dogecash/blocks
chown -R doge_mn$mnr:doge_mn$mnr blocks
cp -a /home/doge_mn$mno/.dogecash/chainstate /home/doge_mn$mnr/.dogecash/chainstate
chown -R doge_mn$mnr:doge_mn$mnr chainstate
cp -a /home/doge_mn$mno/.dogecash/sporks /home/doge_mn$mnr/.dogecash/sporks
chown -R doge_mn$mnr:doge_mn$mnr sporks
cp -a /home/doge_mn$mno/.dogecash/zerocoin /home/doge_mn$mnr/.dogecash/zerocoin
chown -R doge_mn$mnr:doge_mn$mnr zerocoin
cp /home/doge_mn$mno/.dogecash/peers.dat /home/doge_mn$mnr/.dogecash/peers.dat
chown -R doge_mn$mnr:doge_mn$mnr peers.dat
systemctl start doge_mn$mno.service
sleep 30
systemctl start doge_mn$mnr.service
cd /root
sleep 30

}
 
read -n 2 -p "Copiare:" mno
read -n 2 -p "In:" mnd

ripr_mn "$mnd" "$mno"
