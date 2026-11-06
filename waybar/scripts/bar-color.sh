#!/bin/sh
# Pick one contrast-checked text/background pair at random (WCAG 5.4 to 14.3)
# and write ~/.cache/waybar/style.css = style.css with that pair.
# Waybar runs on that file (-s) and reloads it on change (reload_style_on_change;
# only the -s file is watched, not imported files).
# "show" as first argument also shows the bar (hypridle on resume, D-004).
SRC="$HOME/.config/waybar/style.css"
OUT="$HOME/.cache/waybar/style.css"
set -- "$1" $(shuf -n 1 <<'PAIRS'
#ff6b6b #062626
#ffb347 #1a2a5e
#ffff66 #2e1065
#90ee90 #4a1040
#87ceeb #4a2a10
#9b7fe8 #0f1f08
#ff69b4 #0a2a14
PAIRS
)
mkdir -p "${OUT%/*}"
sed -e "s/^@define-color bar_fg #[0-9a-fA-F]*;/@define-color bar_fg $2;/" \
    -e "s/^@define-color bar_bg #[0-9a-fA-F]*;/@define-color bar_bg $3;/" "$SRC" > "$OUT.tmp" \
    && mv "$OUT.tmp" "$OUT"
[ "$1" = show ] && pkill -SIGUSR2 -x waybar
exit 0
