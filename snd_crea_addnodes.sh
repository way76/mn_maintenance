addnodes() {
sudo -Hu snodecoin-mn1 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn2 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn3 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn4 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn5 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn6 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn7 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn8 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn9 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn10 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn11 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn12 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn13 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn14 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn15 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn16 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn17 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn18 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn19 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
sudo -Hu snodecoin-mn20 snodecoin-cli getpeerinfo | grep  addr -w >> /root/snd_nodes.txt
}

addnodes
sed -e 's/\s\+//g' snd_nodes.txt > snd_nodes1.txt
sed -e 's/\"addr\":\+/addnode=/g' snd_nodes1.txt > snd_nodes.txt
sed -e 's/\s\+//g' snd_nodes.txt > snd_nodes1.txt
sed -e 's/\,\+//g' snd_nodes1.txt > snd_nodes.txt	
awk '!seen[$0]++' snd_nodes.txt > snd_nodes1.txt
rm snd_nodes.txt
cp snd_nodes1.txt snd_nodes.txt
rm snd_nodes1.txt
