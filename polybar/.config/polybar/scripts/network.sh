#!/bin/bash


WIFI_STATUS=$(cat /sys/class/net/wlp2s0/operstate)
# CONNECTION=$(
# iwctl station wlan0 show | sed -n -e 's/^.*network //p'| awk '{gsub(/^ +| +$/,"")} {print $0}'
# )
# CONNECTION="${CONNECTION%%*()}"
CONNECTION=$(nmcli -t -f name connection show --active)
CONNECTION="${CONNECTION%%*()}"

if [ "$WIFI_STATUS" = "up" ]
then
  ICON=""
else
  ICON=""
  CONNECTION="Disconnected"
fi
echo "${CONNECTION}"
