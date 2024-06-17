echo > /etc/hostname BR-SRV

#енс 33 -22.22.22.22 если имя отличетеся меняете имя в командах, смотри комент ниже
nmcli con modify ens33 ipv4.method static
nmcli con modify ens33 ipv4.address 192.168.200.1/28
nmcli connection modify ens33 ipv4.dns 192.168.100.1
nmcli connection modify ens33 IPv4.gateway 192.168.200.14

nmcli networking off
nmcli networking on

nmcli con modify ens33 ipv6.method manual
nmcli con modify ens33 ipv6.address 2000:200::1/124 gw6 2000:200::f

nmcli networking off
nmcli networking on

systemctl restart NetworkManager.service
reboot

