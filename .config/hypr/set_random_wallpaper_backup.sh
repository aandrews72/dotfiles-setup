#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers/"

while true; do
    RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    swaybg -i "$RANDOM_WALLPAPER"
    sleep 600  # 600 seconds = 10 minutes
done


