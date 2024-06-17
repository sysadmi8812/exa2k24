rm -rf /etc/net/ifaces/ens160/*
cp dhcp/options /etc/net/ifaces/ens160/
systemctl restart network
systemctl reboot
