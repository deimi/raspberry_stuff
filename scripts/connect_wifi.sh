#!/bin/bash

if [[ "$1" == "" ]] || [[ "$1" == "--help" ]]; then
    echo "Adds wifi connection to wpa_supplicant without plain phassprase"
    echo "Usage: "
	echo "sudo connect_wifi {SSID} {Passphrase}"
    exit 1
fi

wpa_passphrase $1 $2 | grep -v "#psk" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf
exit 0
