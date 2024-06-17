timedatectl set-timezone Europe/Moscow
cp chrony/chrony.conf /etc/chrony.conf
systemctl enable --now chronyd
systemctl restart chronyd

