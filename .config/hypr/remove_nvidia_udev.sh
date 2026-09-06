rm /etc/modprobe.d/blacklist-nouveau.conf
rm /etc/udev/rules.d/00-remove-nvidia.rules
powerprofilesctl set balanced
reboot
