#  имя интерфейса меняем под сеь 192.168.100.0
#В конфигурационном файле поменять!!!!

cp dhcp/dhcpd /etc/sysconfig/
cp dhcp/dhcpd.conf /etc/dhcp/
systemctl enable --now dhcpd
systemctl restart dhcpd
#journalctl -f -u dhcpd

cp dhcp/dhcpd6.conf /etc/dhcp/
cp dhcp/dhcpd6 /etc/sysconfig/
systemctl enable --now dhcpd6
systemctl restart dhcpd6

cp dhcp/radvd.conf /etc/radvd.conf
systemctl restart network
systemctl restart dhcpd6
systemctl enable --now radvd
