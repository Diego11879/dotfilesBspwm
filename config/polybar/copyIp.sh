#!/bin/bash
#for xclip
if [ -s ~/.config/polybar/htb_ip.txt ]; then
    cat ~/.config/polybar/htb_ip.txt | xclip -selection clipboard
    notify-send "IP copiada" "$(cat ~/.config/polybar/htb_ip.txt)"
else
    notify-send "No hay IP guardada"
fi


#for wayland
#!/bin/bash
#if [ -s ~/.config/polybar/htb_ip.txt ]; then
#    cat ~/.config/polybar/htb_ip.txt | wl-copy -selection clipboard
#    notify-send "IP copiada" "$(cat ~/.config/polybar/htb_ip.txt)"
#else
#    notify-send "No hay IP guardada"
#fi

