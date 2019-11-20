#!/usr/bin/zsh

setxkbmap gb -option compose:ralt &

function wall() {
    ~/.wallpapers/fetch-wallpaper.sh feh --bg-fill "$HOME/.wallpapers/images/wallpaper.jpg" &
}

wall &
# hsetroot -solid "#1e1f28"

dunst &

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar -c ~/.config/polybar/config top &
