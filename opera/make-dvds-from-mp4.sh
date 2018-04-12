export VIDEO_FORMAT=NTSC
for i in *.mp4
do
ffmpeg -i "$i" -target ntsc-dvd -aspect 16:9 -b:v 3100k -ac 2 "${i%.mp4}.mpg"
dvdauthor -t -o "${i%.mp4}" --video=ntsc -c 5:00,10:00,15:00,20:00,25:00,30:00,35:00,40:00,45:00,50:00,55:00,1:00:00,1:05:00,1:10:00,1:15:00,1:20:00,1:25:00,1:30:00,1:35:00,1:40:00,1:45:00,1:50:00,1:55:00,2:00:00,2:05:00,2:10:00,2:15:00,2:20:00,2:25:00,2:30:00,2:35:00,2:40:00,2:45:00,2:50:00,2:55:00,3:00:00 -f "${i%.mp4}.mpg"
dvdauthor -T -o "${i%.mp4}"
mkisofs -dvd-video -o "${i%.mp4}.iso" "${i%.mp4}"
if [ -e "${i%.mp4}.iso" ] 
then
	rm -rf "${i%.mp4}"
	#rm "${i%.mp4}.mpg"
        mv "${i%.mp4}.mpg" mpgs/
        mv "$i" madeintoiso/
	mv "${i%.mp4}.iso" toburn/

fi

done
