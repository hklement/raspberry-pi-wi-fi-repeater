# Install packages
apt-get update
apt-get upgrade
apt-get install dnsmasq hostapd ifrename iptables wpasupplicant

# Rename network interfaces
mv iftab /etc/

# Set up network interfaces
mv interfaces /etc/network/

# Set up access point
mv hostapd.conf /etc/hostapd/
mv hostapd /etc/init.d/

# Set up DHCP
mv dnsmasq.conf /etc/
mv dnsmasq.sh /etc/network/if-up.d/
chown root:root /etc/network/if-up.d/dnsmasq.sh
chmod +x /etc/network/if-up.d/dnsmasq.sh

# Start access point
/etc/init.d/hostapd start

# Enable packet forwarding
mv sysctl.conf /etc/

# Set up routing
mv router.sh /etc/network/if-up.d/
chown root:root /etc/network/if-up.d/router.sh
chmod +x /etc/network/if-up.d/router.sh

# Reboot
reboot
