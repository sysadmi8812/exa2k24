dnf update -y
dnf upgrade -y
dnf install -y iperf3
systemctl enable --now iperf3
dnf install -y chrony


