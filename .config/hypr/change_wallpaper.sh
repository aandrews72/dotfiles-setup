#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers/"
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

swaybg -i "$RANDOM_WALLPAPER" -m fill

