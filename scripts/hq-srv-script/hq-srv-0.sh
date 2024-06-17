apt-get update
apt-get upgrade --enable-upgrade -y
apt-get install -y NetworkManager-{daemon,tui}
systemctl enable --now NetworkManager
apt-get install -y iperf3
systemctl enable --now iperf3
apt-get install -y bind bind-utils
apt-get install -y chrony
apt-get install -y rsyslog-classic
apt-get install -y docker-{ce,compose}
systemctl enable --now docker.service
#apt-get install -y deploy
#deploy moodle
#deploy moodle password=5Z4SAq2U28rWyVz
