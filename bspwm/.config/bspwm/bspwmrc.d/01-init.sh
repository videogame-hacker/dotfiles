#!/usr/bin/zsh

setxkbmap gb -option compose:ralt &

function wall() {
    sleep .5
    ~/.wallpapers/apply-wallpaper.sh
}

wall &
# hsetroot -solid "#1e1f28"

dunst &

MONITOR=$(polybar -m|grep primary|sed -e 's/:.*$//g') polybar -c ~/.config/polybar/config top &
