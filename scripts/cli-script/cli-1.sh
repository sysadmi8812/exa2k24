echo > /etc/hostname CLI

sed -i 's/CONFIG_IPV6=no/CONFIG_IPV6=yes/g' /etc/net/ifaces/default/options

mkdir /etc/net/ifaces/ens33 # 44.44.44.1
mkdir /etc/net/ifaces/ens36 # 33.33.33.33

cp interface/options /etc/net/ifaces/ens33/   #  это 35 енс
cp interface/options /etc/net/ifaces/ens36/

cp interface/resolv.conf /etc/net/ifaces/ens36/

echo 33.33.33.33/24 > /etc/net/ifaces/ens36/ipv4address
echo 2001:33::33/64 > /etc/net/ifaces/ens36/ipv6address
#echo default via 33.33.33.1 > /etc/net/ifaces/ens36/ipv4route
echo default via 33.33.33.1 > /etc/net/ifaces/ens36/ipv4route
echo 192.168.100.0/26 via 44.44.44.44 >> /etc/net/ifaces/ens33/ipv4route
#echo 22.22.22.0/24 via 33.33.33.1 >> /etc/net/ifaces/ens36/ipv4route
#echo 192.168.200.0/28 via 44.44.44.44 >> /etc/net/ifaces/ens33/ipv4route
echo default via 2001:33::1 > /etc/net/ifaces/ens36/ipv6route

echo 44.44.44.1/24 > /etc/net/ifaces/ens33/ipv4address
echo 2001:44::1/64 > /etc/net/ifaces/ens33/ipv6address
echo '192.168.100.1 HQ-SRV' >> /etc/hosts
echo '11.11.11.11 mediawiki.demo.first mediawiki' >> /etc/hosts
systemctl restart network
systemctl restart NetworkManager
systemctl reboot
