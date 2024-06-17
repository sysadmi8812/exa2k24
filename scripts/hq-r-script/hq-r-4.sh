useradd admin -m -c "Admin" -U
passwd admin
useradd network-admin -m -c "Network admin" -U
passwd network-admin

systemctl reboot
