nft add table inet nat
nft add chain inet nat postrouting '{ type nat hook postrouting priority 0; }'
nft add rule inet nat postrouting ip saddr 192.168.200.0/28 oifname 'ens33' counter masquerade # имя интерфейса изменить, на тот где 22.22.22.22
nft list ruleset > /etc/sysconfig/nftables.conf
systemctl restart nftables
systemctl enable nftables
