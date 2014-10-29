#!/bin/bash 
wallpaperDir="/home/alex/Pictures/Wallpapers/primaryScreen" 
secondaryWallpaperDir="/home/alex/Pictures/Wallpapers/secondaryScreen"

primaryPicture=$(/bin/ls $wallpaperDir/* | shuf -n1)
secondaryPicture=$(/bin/ls $secondaryWallpaperDir/* | shuf -n1)

export DISPLAY=:0

/usr/bin/feh  --bg-scale $secondaryPicture $primaryPicture >> /home/alex/.debug 

echo "DEBUG: script to change wallpaper is running...wallpaper=$wallpaperDir | picture=$primaryPicture" >> /home/alex/.debug
echo "DEBUG: script to change wallpaper is running...wallpaper=$secondaryWallpaperDir | picture=$secondaryPicture" >> /home/alex/.debug
