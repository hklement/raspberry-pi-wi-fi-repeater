# Raspberry Pi Wi-Fi Repeater

Set up a Raspberry Pi to serve as a Wi-Fi repeater.

Based on http://tiny.cc/wi-pi1 and http://tiny.cc/wi-pi2.

## Instructions

1. Install Raspbian by adjusting and executing `install-raspbian.sh`
2. Adjust `iftab` to match your Wi-Fi adapters' MAC addresses
3. Enter your existing Wi-Fi's SSID and password in `interfaces`
4. Set up the new access point's SSID and password by adjusting `hostapd.conf`
5. Copy all files to your Raspberry Pi and execute `sudo install-packages.sh`
