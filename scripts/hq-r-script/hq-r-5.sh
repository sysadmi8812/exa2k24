systemctl start iperf3
iperf3 -c 22.22.22.22 # нужно заменить на 11.11.11.1
iperf3 -c 22.22.22.22 --get-server-output --logfile ~/iperf3_logfile.txt
# на встречке выполняем команду iperf3 -s
