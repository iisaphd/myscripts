ffmpeg -i "$1" -filter:v "transpose=3" -q:v 1 i"$2" && ffmpeg -i i"$2" -filter:v "hflip" -q:v 1 "$2" && rm i"$2"
