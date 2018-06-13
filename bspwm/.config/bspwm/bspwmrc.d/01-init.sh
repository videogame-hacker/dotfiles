#!/usr/bin/zsh

setxkbmap gb -option compose:ralt &

~/.wallpapers/apply-wallpaper.sh &
# hsetroot -solid "#1e1f28"

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar -c ~/.config/polybar/config top &
