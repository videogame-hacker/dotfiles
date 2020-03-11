xsetroot -cursor_name left_ptr

bspc config border_width 1
bspc config window_gap 12

for side in {top,bottom,left,right}; do
    bspc config "${side}_padding" -12
    bspc config "${side}_monocle_padding" 12
done

bspc config borderless_monocle true
bspc config gapless_monocle true
bspc config single_monocle true

bspc config normal_border_color "#19171a"
bspc config focused_border_color "#f07fbe"
bspc config presel_feedback_color "#f07fbe"
