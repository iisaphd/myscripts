ffmpeg -start_number $1 -i "$2" -c:v libx264 -r 30 -pix_fmt yuv420p "$3"
