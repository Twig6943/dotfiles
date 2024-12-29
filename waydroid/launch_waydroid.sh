#!/bin/bash

# Start Waydroid
waydroid session stop
sudo waydroid session stop
sudo systemctl stop nftables.service
sudo systemctl start iptables.service
waydroid prop set persist.waydroid.uevent true
waydroid session start & waydroid show-full-ui
waydroid prop set persist.waydroid.uevent true

# Wait for user to close Waydroid UI
read -p "Press [Enter] once you are done using Waydroid..."

# Stop Waydroid
waydroid session stop

echo "Waydroid session stopped and firewall services reverted."
