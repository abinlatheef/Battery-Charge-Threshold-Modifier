#!/bin/bash

path="/etc/systemd/system/battery-charge-threshold.service"

echo "--CHANGE BATTERY CHARGE THRESHOLD--"
current=$(awk 'NR == 10 {print $4}' $path)
echo "Current Threshold = $current"
echo -n "Enter the required Threshold : "
read new
sed -i s/$current/$new/ $path
echo "Threshold modification successful!"

systemctl daemon-reload
systemctl restart battery-charge-threshold.service
