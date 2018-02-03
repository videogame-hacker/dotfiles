#!/usr/bin/sh

setxkbmap gb -option compose:ralt &
feh --randomize --bg-fill ~/.wallpapers &
MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar -c ~/.config/polybar/config top &
