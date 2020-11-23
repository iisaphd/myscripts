ffmpeg -y -ss 0:00:00 -t 0:26:32 -i "Doctor Sleep-Part19.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Doctor Sleep-chapter-20.mp3"
ffmpeg -y -ss 0:26:32 -t 0:11:47 -i "Doctor Sleep-Part19.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Doctor Sleep-chapter-21.mp3"
ffmpeg -y -ss 0:38:19 -t 0:19:44 -i "Doctor Sleep-Part19.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Doctor Sleep-chapter-22.mp3"
ffmpeg -y -ss 0:58:03 -t 0:19:57 -i "Doctor Sleep-Part19.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Doctor Sleep-chapter-23.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 10 23` ; do mkdir $i; mv Doctor\ Sleep-chapter-$i* $i/; done
for i in `seq 10 23` ; do cp *jpg $i/; cd $i; dotracks.sh 'Stephen King' 'Doctor Sleep'; cd ..; done


rm *odm
rm *marker
