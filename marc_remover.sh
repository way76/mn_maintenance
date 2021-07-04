

ripr_mn()
{
mnr=$1

echo "rimozione mn $mnr"
systemctl stop marcoin-mn$mnr.service
rm /etc/systemd/system/marcoin-mn$mnr.service
userdel marcoin-mn$mnr -r
}
 
ripr_mn "1"
ripr_mn "2"
ripr_mn "3"
ripr_mn "4"
ripr_mn "5"
ripr_mn "6"
ripr_mn "7"
ripr_mn "8"
ripr_mn "9"
ripr_mn "10"
ripr_mn "11"
ripr_mn "12"
ripr_mn "13"
ripr_mn "14"
ripr_mn "15"
ripr_mn "16"
ripr_mn "17"
ripr_mn "18"
ripr_mn "19"
ripr_mn "20"
