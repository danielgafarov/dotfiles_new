#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"
CURRENT_WALL=$(cat ~/.config/hypr/hyprpaper.conf | grep --max-count 1 'path' | awk '{printf $3}')

# Get a random wallpaper that is not the current one
wallpapers=($(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \)))

current_index=-1
for i in "${!wallpapers[@]}"; do
    if [[ "${wallpapers[$i]}" == "$CURRENT_WALL" ]]; then
        current_index=$i
        break
    fi
done

next_index=$(( (current_index + 1) % ${#wallpapers[@]} ))
WALLPAPER="${wallpapers[$next_index]}"


# Apply the selected wallpaper
hyprctl hyprpaper wallpaper "DP-5, $WALLPAPER,"
hyprctl hyprpaper wallpaper "eDP-1, $WALLPAPER,"

printf "wallpaper {
    monitor = DP-5
    path = $WALLPAPER
}

wallpaper {
    monitor = eDP-1
    path = $WALLPAPER
}
" > ~/.config/hypr/hyprpaper.conf
