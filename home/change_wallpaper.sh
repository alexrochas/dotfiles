#!/bin/bash

# Script for change my wallpaper dinamically when using i3.

# Dir for my wallpapers.
wallpaperDir="/home/alex/Pictures/Wallpapers/primaryScreen"
secondaryWallpaperDir="/home/alex/Pictures/Wallpapers/secondaryScreen"

# Random picture for screens.
primaryPicture=$(/bin/ls $wallpaperDir/* | shuf -n1)
secondaryPicture=$(/bin/ls $secondaryWallpaperDir/* | shuf -n1)

export DISPLAY=:0

# Run feh to change wallpaper.
/usr/bin/feh  --bg-scale $secondaryPicture $primaryPicture >> /home/alex/.debug

# For debug purposes only.
#
# echo "DEBUG: script to change wallpaper is running...wallpaper=$wallpaperDir | picture=$primaryPicture" >> /home/alex/.debug
# echo "DEBUG: script to change wallpaper is running...wallpaper=$secondaryWallpaperDir | picture=$secondaryPicture" >> /home/alex/.debug
