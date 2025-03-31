#!/bin/bash

CHOICE=$(echo -e "Ingresar nueva IP\nLimpiar IP" | rofi -dmenu -p "HackTheBox")

if [[ "$CHOICE" == "Ingresar nueva IP" ]]; then
    NEW_IP=$(rofi -dmenu -p "Introduce la IP")
    if [[ -n "$NEW_IP" ]]; then
        echo "$NEW_IP" > ~/.config/polybar/htb_ip.txt
        notify-send "IP actualizada" "$NEW_IP"
    fi
elif [[ "$CHOICE" == "Limpiar IP" ]]; then
    echo "No IP" > ~/.config/polybar/htb_ip.txt
    notify-send "IP eliminada"
fi

