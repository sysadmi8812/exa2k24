echo > /etc/hostname HQ-SRV

mkdir /etc/net/ifaces/ens160 #  33 ens

sed -i 's/CONFIG_IPV6=no/CONFIG_IPV6=yes/g' /etc/net/ifaces/default/options

cp options /etc/net/ifaces/ens160/

echo 192.168.100.1/26 > /etc/net/ifaces/ens160/ipv4address

echo 2000:100::1/122 > /etc/net/ifaces/ens160/ipv6address

echo default via 192.168.100.62 > /etc/net/ifaces/ens160/ipv4route

echo default 2000:100::3f/122 > /etc/net/ifaces/ens160/ipv6route

cp resolv.conf /etc/net/ifaces/ens160/

#apt-get update && apt-get install -y NetworkManager-{daemon,tui}
#systemctl enable --now NetworkManager

# cli -  hq
mkdir /etc/net/ifaces/ens224
cp options /etc/net/ifaces/ens224/

echo 44.44.44.144/24 > /etc/net/ifaces/ens224/ipv4address

echo 2001:44::144/64 > /etc/net/ifaces/ens224/ipv6address
#echo name_servers=127.0.0.1 >> /etc/resolvconf.conf

systemctl restart network
systemctl restart NetworkManager

systemctl restart network

systemctl reboot
