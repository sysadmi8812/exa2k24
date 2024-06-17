timedatectl set-timezone Europe/Moscow
cp syslog/rsyslog.conf /etc/
systemctl enable --now rsyslog
systemctl restart rsyslog
