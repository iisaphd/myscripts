#!/bin/sh

palette="palette.png"

filters="fps=$4,scale=-1:$3:flags=lanczos"

ffmpeg -v warning -i "$1" -vf "$filters,palettegen" -y "$palette"
ffmpeg -v warning -i "$1" -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y "$2"
