#!/usr/bin/bash

function unsp {
    UNSPLASH_TRAILER="fm=jpg&crop=entropy&w=1920&h=1080&fit=crop"
    echo "https://images.unsplash.com/$@?$UNSPLASH_TRAILER"
}

# https://source.unsplash.com/featured/1920x1080/?urban,night

WALLPAPERS=(
    $(unsp photo-1506348424954-b03ae28965ec)
    $(unsp photo-1541517596158-94bdf510bff3)
    $(unsp photo-1542810390-448ab2357d75)
    $(unsp photo-1466158665257-b4899e4813b3)
    $(unsp photo-1467645990565-90fd0640ed3e)
    $(unsp photo-1453586857165-eb78d44460ca)
    $(unsp photo-1519865402023-40e4b7bfcba0)
    $(unsp photo-1519374086542-9ff30b72beec)
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

index=$(($RANDOM % ${#WALLPAPERS[@]}))
swaybg -i "$HOME/.wallpapers/images/wallpaper-$index.jpg" -m fill &
