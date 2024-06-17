nmcli connection add type ip-tunnel ip-tunnel.mode gre con-name tun1 ifname tun1 remote 11.11.11.11 local 22.22.22.22

nmcli connection modify tun1 ipv4.addresses '172.16.100.2/24'

nmcli connection modify tun1 ipv4.method manual

nmcli connection modify tun1 +ipv4.routes "192.168.100.0/26 172.16.100.2"

nmcli connection up tun1

 nmcli connection modify tun1 ip-tunnel.ttl 64
