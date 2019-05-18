#!/usr/bin/env bash

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

if $(nmcli | grep -q 'wlan0: disconnected')
    then
        printf 'Starting WiFi Connect\n'
        ./wifi-connect
    else
        printf 'Skipping WiFi Connect\n'    
fi
# Start your application here.
sleep 60s
