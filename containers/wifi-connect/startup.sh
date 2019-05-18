#!/usr/bin/env bash

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

if $(ip route | grep -Eq "^default via [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}.*wlan0")
    then 
        printf 'Skipping WiFi Connect\n'
    else 
        printf 'Starting WiFi Connect\n'
        ./wifi-connect 
fi

sleep 60s

