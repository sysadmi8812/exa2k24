mkdir /etc/net/ifaces/tun1

cp tunel/options /etc/net/ifaces/tun1/  #  в файле options проверить имя интерфейся к которому прибит gre
cp tunel/ipv4address /etc/net/ifaces/tun1/
cp tunel/ipv6address /etc/net/ifaces/tun1/
cp tunel/ipv4route /etc/net/ifaces/tun1/

/sbin/modprobe gre

#ip link set tun1 up

systemctl restart network



