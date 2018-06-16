#!/usr/bin/bash

WALLPAPERS=(
    "https://images.unsplash.com/photo-1506348424954-b03ae28965ec"
    "https://images.unsplash.com/photo-1461884430365-0a87b6123549"
    "https://images.unsplash.com/photo-1523650126631-9fafa6ed33fc"
    "https://images.unsplash.com/photo-1502533609822-c877fe10f870"
    "https://images.unsplash.com/photo-1523988628690-c6661ec0e53d"
    "https://images.unsplash.com/photo-1521794286957-348245b517a0"
    "https://images.unsplash.com/photo-1505526484636-f0a465cf6d19"
)

function fetch() {
    mkdir "$HOME/.wallpapers/images/"
    
    for i in "${!WALLPAPERS[@]}"; do
        if [ ! -f "$HOME/.wallpapers/images/wallpaper-$i.jpg" ]; then
            wget -O "$HOME/.wallpapers/images/wallpaper-$i.jpg" "${WALLPAPERS[$i]}" &
        fi
    done

    wait $(jobs -p)
}

last=`expr ${#WALLPAPERS[@]} - 1`
if [ ! -f "$HOME/.wallpapers/images/wallpaper-${last}.jpg" ]; then
    fetch
fi

feh --randomize --bg-fill "$HOME/.wallpapers/images"
