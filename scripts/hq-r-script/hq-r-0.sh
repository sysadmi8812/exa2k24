apt-get update
apt-get upgrade --enable-upgrade -y
apt-get install -y iperf3
systemctl enable --now iperf3
apt-get install -y dhcp-server
apt-get install -y radvd
apt-get install -y nftables
#apt-get install -y bind bind-utils
apt-get install -y chrony
apt-get install -y rsyslog-classic
