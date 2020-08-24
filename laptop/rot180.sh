ffmpeg -i "$1" -filter:v "vflip" -q:v 1 i"$2" && ffmpeg -i i"$2" -filter:v "hflip" -q:v 1 "$2" && rm i"$2"
