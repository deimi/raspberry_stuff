# this script is necessery for older os images like Odroid C1 Ubuntu 18.04
# in newer Images like latest Raspian, its not necessery
# see http://daniel-lnx.blogspot.com/2013/01/raspberry-pi-and-isy-usb-wireless-micro.html

sudo su -

echo "blacklist rtl8192cu" > /etc/modprobe.d/blacklist-rtl8192cu.conf

echo 8192cu > /etc/modules

# echo "modprobe 8192cu"
echo 'echo "050d 11f2" > /sys/bus/usb/drivers/rtl8192cu/new_id' > /etc/rc.local

exit