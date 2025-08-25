#!/bin/sh

# Wi-Fi interface detection
WIFI_INTERFACE=$(networksetup -listallhardwareports | \
  awk '/Wi-Fi/{getline; print $2}')

SSID=$(networksetup -getairportnetwork "$WIFI_INTERFACE" | sed 's/^Current Wi-Fi Network: //')

# Choose icon based on signal strength
SIGNAL=$( /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/agrCtlRSSI/ {print $2}' )

ICON="􀙇"  # Default no signal
if [ "$SIGNAL" -gt -80 ]; then
  ICON="􀙈"  # Full bars
elif [ "$SIGNAL" -gt -70 ]; then
  ICON="􀙉"  # Medium
elif [ "$SIGNAL" -gt -60 ]; then
  ICON="􀙊"  # Low
else
  ICON="􀙋"  # Very low or disconnected
fi

# Send update to SketchyBar
sketchybar --set $NAME icon="$ICON" label=""

