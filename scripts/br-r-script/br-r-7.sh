echo "*.* @@192.168.200.1:514" > /etc/rsyslog.d/all_log.conf
systemctl enable --now rsyslog
systemctl restart rsyslog
logger -p 'error' 'Test'

