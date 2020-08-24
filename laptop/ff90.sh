ffmpeg -y -ss $1 -t $2 -i "$3" -filter:v "transpose=1" -q:v 1 "$4"
