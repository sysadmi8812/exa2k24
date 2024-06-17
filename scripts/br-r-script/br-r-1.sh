echo > /etc/hostname BR-R

#енс 33 -22.22.22.22 если имя отличетеся меняете имя в командах, смотри комент ниже
nmcli con modify ens33 ipv4.method static
nmcli con modify ens33 ipv4.address 22.22.22.22/24
nmcli connection modify ens33 ipv4.dns 192.168.100.1
nmcli connection modify ens33 IPv4.gateway 22.22.22.1


nmcli con modify ens33 ipv6.method manual
nmcli con modify ens33 ipv6.address 2001:22::22/64 gw6 2001:22::1

nmcli networking on

# ens 36  192.168.200.14
#имя  интерфейсах в ковычках если русское, первый скрипт  проверит имя, ред ос говно, зачем так обозначать, пздц полный
nmcli con modify 'Проводное подключение 1' ipv4.method static
nmcli con modify 'Проводное подключение 1' ipv4.address 192.168.200.14/28

nmcli con modify 'Проводное подключение 1' ipv6.method manual
nmcli con modify 'Проводное подключение 1' ipv6.address 2000:200::f/124


nmcli networking off
nmcli networking on

cp sysctl.conf /etc/


systemctl restart NetworkManager.service
reboot
