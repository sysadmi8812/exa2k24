apt-get update
apt-get upgrade --enable-upgrade -y
apt install openssh-server
systemctl restart sshd
systemctl enable sshd
apt-get install -y chrony
