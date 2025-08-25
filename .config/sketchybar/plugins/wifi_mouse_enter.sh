#!/bin/bash

WIFI_INTERFACE=$(networksetup -listallhardwareports | \
  awk '/Wi-Fi/{getline; print $2}')

SSID=$(networksetup -getairportnetwork "$WIFI_INTERFACE" | sed 's/^Current Wi-Fi Network: //')

sketchybar --set $NAME label="$SSID"

