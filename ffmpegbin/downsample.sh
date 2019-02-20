#!/bin/bash
ffmpeg -i "$1" -vf scale=720:480 -c:v libx264 -crf 18 -preset medium -c:a copy "$2"

