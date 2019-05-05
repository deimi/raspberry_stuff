#!/bin/bash

# Success can be checked after reboot with
# cat /sys/module/8192cu/parameters/rtw_power_mgnt
# If this returns zero, all is fine


echo "Disable automated powermanagement standy of 8192cu based wifi dongles."
echo "ATTENTION: Call with sudo!!!!"

echo 'options 8192cu rtw_power_mgnt=0 rtw_enusbss=0' | sudo tee /etc/modprobe.d/8192cu.conf

echo "Please reboot!!!"

exit 0
