#!/bin/bash
path="/etc/systemd/system/battery-charge-threshold.service"
BAT=$(ls /sys/class/power_supply/ | grep BAT)
wget https://raw.githubusercontent.com/abinlatheef/Battery-Charge-Threshold-Modifier/main/battery-charge-threshold.service -O /etc/systemd/system/battery-charge-threshold.service
sed -i s/BATTERY_NAME/$BAT/g $path
echo "Systemd service created"
systemctl enable battery-charge-threshold.service
systemctl start battery-charge-threshold.service

echo "--CHANGE BATTERY CHARGE THRESHOLD--"
current=$(awk 'NR == 10 {print $4}' $path)
echo "Current Threshold = $current"
read -p "Enter the required Threshold : " new < /dev/tty
sed -i s/$current/$new/ $path
echo "Threshold modification successful!"
systemctl daemon-reload
systemctl restart battery-charge-threshold.service
