# Battery Charge Threshold Modifier Scrpit for Linux
A script to modify battery charging threshold for Linux Laptops.

👉 If you haven't set up the systemd service already, come back here after reading [this article](https://www.linuxuprising.com/2021/02/how-to-limit-battery-charging-set.html). 👈

### Why this script?
After setting up the service, if you need to change the threshold value, you have to go and edit the systemd service file with superuser premission and reload the daemon and then restart the service. If I was on windows, I just have to move a slider. I don't know how I can create a slider like that here on Linux. So I tried this script.

### What you have to do?
1. Just take this .sh file and save it somewhere convenient.
2. Run with superuser permission. (`sudo ./bat_threshold.sh` from the same directory).
3. It will ask you for the new value. Give that.
4. Done.
