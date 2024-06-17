sed -i "s/#Port 22/Port 2222/g" /etc/openssh/sshd_config
systemctl restart sshd

