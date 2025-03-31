#!/bin/bash

OPTION=$(echo -e "󰐥 Apagar\n Reiniciar\n Bloquear\n󰿅 Cerrar sesión\n Suspender" | rofi -dmenu -p "Power Menu")

case "$OPTION" in
    "󰐥 Apagar") systemctl poweroff ;;
    " Reiniciar") systemctl reboot ;;
    " Bloquear") betterlockscreen -l ;;  
    "󰿅 Cerrar sesión") bspc quit -r ;;
    " Suspender") systemctl suspend ;;
esac

