#!/usr/bin/zsh

setxkbmap gb -option compose:ralt &

feh --randomize --bg-fill ~/.wallpapers &
# hsetroot -solid "#1e1f28"

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar -c ~/.config/polybar/config top &
