#!/bin/bash

# Options
options="Performance\nBalanced\nPower Saver"

# Rofi command
selected_option=$(echo -e $options | rofi -dmenu -p "Select Power Profile")

# Set power profile based on selected option
case $selected_option in
    Performance)
        powerprofilesctl set performance
        notify-send "Power Profile" "Switched to Performance mode"
        ;;
    Balanced)
        powerprofilesctl set balanced
        notify-send "Power Profile" "Switched to Balanced mode"
        ;;
    Power\ Saver)
        powerprofilesctl set power-saver
        notify-send "Power Profile" "Switched to Power Saver mode"
        ;;
    *)
        notify-send "Power Profile" "No changes made"
        ;;
esac

