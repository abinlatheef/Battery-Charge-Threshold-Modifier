# 🔋Battery Charge Threshold Modifier Script for Linux
A script to modify battery charging threshold for Linux Laptops.

### Why battery charge threshold?
> Limiting laptop charging to 60% or 80% can extend your battery life if your prefer using it plugged in most of the time (I heared half charged battery lives the longest).
> Old laptops may not support this.
> The supported thresholds  may differ for different vendors. ( I read somewhere some systems only supports 60%, 80% and 100%. So try these first.).

👉 If you haven't set up the systemd service already, come back here after reading [this article](https://www.linuxuprising.com/2021/02/how-to-limit-battery-charging-set.html). 👈

### Why this script?
After setting up the service, if you need to change the threshold value, you have to go and edit the systemd service file with superuser premission and reload the daemon and then restart the service. If I was on windows, I just have to move a slider. I don't know how I can create a slider like that here on Linux. So I tried this script.

### What you have to do?
1. Just take this .sh file and save it somewhere convenient.
2. Run. (`./bat_threshold.sh` from the same directory).
3. It will ask you for your password. This for superuser permission to modify protected .service file.
4. It will ask you for the new value. Give that.
5. Done.!

Thanks for reading.See you soon.🤘

I have not tested this on other devices. So feel free to report any issues.
