    #!/bin/bash

    WALLPAPER_DIR="$HOME/.config/hypr/backgrounds/wallpapers_1"
    # Find all image files in the directory and its subdirectories, then pick one randomly
    RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)

    # Set the wallpaper using hyprpaper
    hyprpaper preload "$RANDOM_WALLPAPER"
    hyprpaper set "$RANDOM_WALLPAPER"
