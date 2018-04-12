ffmpeg -y -ss $2 -t $3 -i "$1" -c:v copy -c:a copy "$4"
