

ripr_mn()
{
mnr=$1

systemctl stop marcoin-mn$mnr.service
rm /etc/systemd/system/marcoin-mn$mnr.service
userdel marcoin-mn$mnr -r
}
 
ripr_mn "1"
ripr_mn "2"
ripr_mn "3"
ripr_mn "4"
ripr_mn "5"
