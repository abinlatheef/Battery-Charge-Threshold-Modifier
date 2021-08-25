#!/bin/sh
path="/etc/systemd/system/battery-charge-threshold.service"
BAT=$(ls /sys/class/power_supply/ | grep BAT)
sudo wget https://raw.githubusercontent.com/abinlatheef/Battery-Charge-Threshold-Modifier/main/battery-charge-threshold.service -P /etc/systemd/system/
sudo sed -i s/BATTERY_NAME/$BAT/g $path
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
