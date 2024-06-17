cp bind/options.conf /etc/bind/options.conf
cp bind/resolvconf-options.conf /etc/bind/resolvconf-options.conf
echo name_servers=127.0.0.1 >> /etc/resolvconf.conf
systemctl enable --now bind
systemctl restart bind
cp bind/local.conf /etc/bind/local.conf
cp bind/hq.db /etc/bind/zone/hq.db
cp bind/branch.db /etc/bind/zone/branch.db
cp bind/100.db /etc/bind/zone/100.db
cp bind/200.db /etc/bind/zone/200.db
named-checkconf -z
chown root:named /etc/bind/zone/{hq,branch,100,200}.db
systemctl restart bind
systemctl reboot
