nft add table inet nat
nft add chain inet nat postrouting '{ type nat hook postrouting priority 0; }'
nft add rule inet nat postrouting ip saddr 192.168.100.0/26 oifname 'ens160' counter masquerade
# меняем имя интерфейса где 11.11.11.11
nft add chain inet nat prerouting '{ type nat hook prerouting priority 0; }'
nft add rule inet nat prerouting ip daddr 11.11.11.11 tcp dport 22 dnat to 192.168.100.1:2222
nft add rule inet nat prerouting ip6 daddr 2001:11::11 tcp dport 22 dnat to [2000:100::1]:2222
nft add rule inet nat prerouting ip daddr 11.11.11.11 tcp dport 8080 dnat ip to 192.168.100.1:8081
nft list ruleset | tee -a /etc/nftables/nftables.nft
systemctl restart nftables
systemctl enable nftables
