xrandr --output HDMI-0 --mode 1920x1080 --rotate right \
    --output DP-0 --primary --mode 2560x1440 --rate 144.00 --right-of HDMI-0 \
    --output DP-2 --mode 1920x1080 --rate 144.00 --right-of DP-2

bspc monitor DP-0 -d 1 2 3 4 5 6 7
bspc monitor DP-2 -d 8 9 10
bspc monitor HDMI-0 -d 11 # It goes ALL the way up to eleven
