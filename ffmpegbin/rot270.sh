ffmpeg -i "$1" -filter:v "transpose=3" -qscale 0 "$2"