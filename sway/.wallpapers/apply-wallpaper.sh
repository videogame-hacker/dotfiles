#!/usr/bin/bash

WALLPAPER_URL="https://source.unsplash.com/random/1920x1080?urban,nature"

function fetch() {
    [ -d "$HOME/.wallpapers/images" ] || mkdir "$HOME/.wallpapers/images"
    curl -L "$WALLPAPER_URL" -o "$HOME/.wallpapers/images/wallpaper.jpg"
}

if [ ! -f "$HOME/.wallpapers/images/wallpaper.jpg" ]; then
    fetch
fi

killall swaybg
swaybg -i "$HOME/.wallpapers/images/wallpaper.jpg" -m fill &
fetch
