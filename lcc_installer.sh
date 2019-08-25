mkdir /downloads
cd /downloads
git clone https://github.com/litecoincash-project/litecoincash
cd litecoincash
chown root.root * -R
chmod 755 autogen.sh
chmod 755 share/genbuild.sh
./autogen.sh
./configure
make
make install
mkdir ~/.litecoincash
nano $HOME/.litecoincash/litecoincash.conf
rpcuser=
rpcpassword=
