#!/usr/bin/bash

WALLPAPERS=(
    "https://images.unsplash.com/photo-1506348424954-b03ae28965ec"
    "https://images.unsplash.com/photo-1461884430365-0a87b6123549"
    "https://images.unsplash.com/photo-1523650126631-9fafa6ed33fc"
    "https://images.unsplash.com/photo-1502533609822-c877fe10f870"
)

function fetch() {
    mkdir "$HOME/.wallpapers/images/"
    
    for i in "${!WALLPAPERS[@]}"; do
        wget -O "$HOME/.wallpapers/images/wallpaper-$i.jpg" "${WALLPAPERS[$i]}" &
    done

    wait $(jobs -p)
}

last=#WALLPAPERS[@]-1

if [ ! -f "$HOME/.wallpapers/images/wallpaper-${last}.jpg" ]; then
    fetch
fi

feh --randomize --bg-fill "$HOME/.wallpapers/images"
