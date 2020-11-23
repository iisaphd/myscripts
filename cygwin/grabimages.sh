#grab images
file=$1
ffmpeg -i "$file" -q:v 1 "${file%.mp4}-%03d.jpg"