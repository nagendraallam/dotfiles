#!/bin/bash

# Find the touchpad ID by matching the device name
DEVICE_NAME="ASUE1209:00 04F3:319F Touchpad"
DEVICE_ID=$(xinput list --id-only "$DEVICE_NAME")

if [ -z "$DEVICE_ID" ]; then
    echo "Touchpad device '$DEVICE_NAME' not found."
    exit 1
fi

# Enable natural scrolling
xinput set-prop "$DEVICE_ID" "libinput Natural Scrolling Enabled" 1

# Enable tap-to-click
xinput set-prop "$DEVICE_ID" "libinput Tapping Enabled" 1

echo "Touchpad settings updated: Natural Scrolling and Tap-to-Click enabled."

xset s off
xset -dpms
xset s noblank
