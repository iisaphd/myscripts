ffmpeg -i "$1" -filter:v "transpose=1" -q:v 1 "$2"
