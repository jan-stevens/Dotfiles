#!/bin/bash


WIFI_STATUS=$(cat /sys/class/net/wlan0/operstate)
CONNECTION=$(
iwctl station wlan0 show | sed -n -e 's/^.*network //p'| awk '{gsub(/^ +| +$/,"")} {print $0}'
)
# CONNECTION="${CONNECTION%%*()}"

if [ "$WIFI_STATUS" = "up" ]
then
  ICON=""
else
  ICON=""
  CONNECTION="Disconnected"
fi
echo "${CONNECTION}"
