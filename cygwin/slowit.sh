 file=$1
 ffmpeg -i $file -filter:v "setpts=$2.0*PTS" -q:v 1 "${file%.mp4}-slow.mp4"
