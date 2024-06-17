cp chrony/chrony.conf /etc/chrony.conf
systemctl enable --now chronyd
systemctl restart chronyd
timedatectl set-timezone Europe/Moscow
systemctl restart chronyd
