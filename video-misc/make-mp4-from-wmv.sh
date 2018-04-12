for i in *.wmv
do
  ffmpeg -i "$i" -c:v libx264 -preset slow -crf 18 "${i%.wmv}.mp4"
done
