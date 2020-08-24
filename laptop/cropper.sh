ffmpeg -i "$1" -filter:v "crop=$2:$3:$4:$5" -q:v 1 "$6"
