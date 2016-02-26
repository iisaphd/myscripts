export VIDEO_FORMAT=NTSC
for i in *.wmv
do
ffmpeg -i "$i" -target ntsc-dvd -aspect 16:9 -b:v 3100k -ac 2 "${i%.wmv}.mpg"
dvdauthor -t -o "${i%.wmv}" --video=ntsc -c 5:00,10:00,15:00,20:00,25:00,30:00,35:00,40:00,45:00,50:00,55:00,1:00:00,1:05:00,1:10:00,1:15:00,1:20:00,1:25:00,1:30:00,1:35:00,1:40:00,1:45:00,1:50:00,1:55:00,2:00:00,2:05:00,2:10:00,2:15:00,2:20:00,2:25:00,2:30:00,2:35:00,2:40:00,2:45:00,2:50:00,2:55:00,3:00:00 -f "${i%.wmv}.mpg"
dvdauthor -T -o "${i%.wmv}"
mkisofs -dvd-video -o "${i%.wmv}.iso" "${i%.wmv}"
if [ $? -eq 0 ]; then
    rm -rf "{i%.wmv}"
    mv "$i" /media/lance/256GBSSD/originals/
    mv "${i%.wmv}.iso" /media/lance/256GBSSD/isos/
    mv "${i%.wmv}.mpg" /media/lance/256GBSSD/mpgs/
fi
done
