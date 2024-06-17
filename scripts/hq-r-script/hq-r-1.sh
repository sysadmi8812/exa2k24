echo > /etc/hostname HQ-R

#hq-r

mkdir /etc/net/ifaces/ens160
mkdir /etc/net/ifaces/ens224
mkdir /etc/net/ifaces/ens256
# интерфейс до cli

sed -i 's/CONFIG_IPV6=no/CONFIG_IPV6=yes/g' /etc/net/ifaces/default/options
cp net3/options /etc/net/ifaces/ens160/  # это 33 енс
cp net3/options /etc/net/ifaces/ens224/   #  это 35 енс
cp net3/options /etc/net/ifaces/ens256/

#cp options /etc/net/ifaces/ens35/

#cp options /etc/net/ifaces/ens36/

cp net3/resolv.conf /etc/net/ifaces/ens160/

#смотрит на isp

echo 11.11.11.11/24 > /etc/net/ifaces/ens160/ipv4address
echo 2001:11::11/64 > /etc/net/ifaces/ens160/ipv6address
echo default via 11.11.11.1 > /etc/net/ifaces/ens160/ipv4route
echo default via 2001:11::1 > /etc/net/ifaces/ens160/ipv6route

#смотрит на  hq-сеть

echo 192.168.100.62/26 > /etc/net/ifaces/ens224/ipv4address
echo 2000:100::3f/122 > /etc/net/ifaces/ens224/ipv6address

#смотрит на cli

echo 44.44.44.44/24 > /etc/net/ifaces/ens256/ipv4address
echo 2001:44::44/64 > /etc/net/ifaces/ens256/ipv6address

#переписывем sysctl

cp net3/sysctl.conf /etc/net/

systemctl restart network

#ping ya.ru -c3 -v4

systemctl reboot
