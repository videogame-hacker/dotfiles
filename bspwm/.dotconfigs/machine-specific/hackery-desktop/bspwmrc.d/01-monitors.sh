xrandr --output DisplayPort-1 --primary --mode 1920x1080 --rate 144 --pos 1920x0 --output HDMI-A-0 --mode 1920x1080 --rate 75 --pos 0x0

bspc monitor DisplayPort-1 -d 1 2 3 4 5 6 7
bspc monitor HDMI-A-0 -d 8 9 10
