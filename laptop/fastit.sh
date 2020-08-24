 file=$1
 ffmpeg -i $file -filter:v "setpts=$2*PTS" -q:v 1 "${file%.mp4}-fast.mp4"
