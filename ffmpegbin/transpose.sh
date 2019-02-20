ffmpeg -i "$1" -filter:v "transpose=$2" -q:v 1 "$3"
