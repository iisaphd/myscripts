ffmpeg -y -ss $1 -t $2 -i "$3" -filter:v "vflip" -q:v 1 i"$4" && ffmpeg -i i"$4" -filter:v "hflip" -q:v 1 "$4" && rm i"$4"
