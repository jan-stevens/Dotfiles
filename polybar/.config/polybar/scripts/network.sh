#!/bin/bash


#WIFI_STATUS=$(cat /sys/class/net/wlp2s0/operstate);
WIFI_STATUS=$(cat /sys/class/net/wlan0/operstate);
#CONNECTION=$(nmcli -t -f name connection show --active);
CONNECTION=$(connmanctl services | awk  '{print $2}');

if [ "$WIFI_STATUS" = "up" ];
then
  ICON="";
else
  ICON="";
  CONNECTION="Disconnected"
fi
echo "$CONNECTION"
