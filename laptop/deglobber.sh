ffmpeg -i $1 -q:v 1 "${1%.mp4}-%04d.jpg"
