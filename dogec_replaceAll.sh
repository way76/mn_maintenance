ripr_mn()
{
mnr=$1
mno=$2
echo "Copio il nodo $2 in $1..."

systemctl stop dogec_mn$mnr.service
rm /home/doge_mn$mnr/.dogecash/blocks -r
rm /home/doge_mn$mnr/.dogecash/budget.dat
rm /home/doge_mn$mnr/.dogecash/chainstate -r
rm /home/doge_mn$mnr/.dogecash/database -r
rm /home/doge_mn$mnr/.dogecash/db.log
rm /home/doge_mn$mnr/.dogecash/debug.log
rm /home/doge_mn$mnr/.dogecash/fee_estimates.dat
rm /home/doge_mn$mnr/.dogecash/mncache.dat
rm /home/doge_mn$mnr/.dogecash/mnpayments.dat
rm /home/doge_mn$mnr/.dogecash/peers.dat
rm /home/doge_mn$mnr/.dogecash/sporks -r
rm /home/doge_mn$mnr/.dogecash/zerocoin -r

systemctl stop dogec_mn$mno.service
cp -a /home/dogec_mn$mno/.dogecash/blocks /home/dogec_mn$mnr/.dogecash/blocks
chown -R dogec_mn$mnr:dogec_mn$mnr blocks
cp -a /home/dogec_mn$mno/.dogecash/chainstate /home/dogec_mn$mnr/.dogecash/chainstate
chown -R dogec_mn$mnr:dogec_mn$mnr chainstate
cp -a /home/dogec_mn$mno/.dogecash/database /home/dogec_mn$mnr/.dogecash/database
chown -R dogec_mn$mnr:dogec_mn$mnr database
cp -a /home/dogec_mn$mno/.dogecash/sporks /home/dogec_mn$mnr/.dogecash/sporks
chown -R dogec_mn$mnr:dogec_mn$mnr sporks
cp -a /home/dogec_mn$mno/.dogecash/zerocoin /home/dogec_mn$mnr/.dogecash/zerocoin
chown -R dogec_mn$mnr:dogec_mn$mnr zerocoin

systemctl start dogec_mn$mnr.service
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
systemctl start dogec_mn1.service
}
echo "scegliere 1 per confermare" 
read azione
case $azione in
  1) copia_mn;;
  *) menu_dogec;;
esac
} 
 
