ffmpeg -y -ss 0:00:00 -t 0:26:31 -i "Intruder in the Dust-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-01.mp3"
ffmpeg -y -ss 0:26:31 -t 0:45:04 -i "Intruder in the Dust-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 0:14:33 -i "Intruder in the Dust-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-2.5.mp3"
ffmpeg -y -ss 0:14:33 -t 0:58:20 -i "Intruder in the Dust-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 1:00:29 -i "Intruder in the Dust-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-04.mp3"
ffmpeg -y -ss 1:00:29 -t 0:10:12 -i "Intruder in the Dust-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 0:17:40 -i "Intruder in the Dust-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-5.5.mp3"
ffmpeg -y -ss 0:17:40 -t 0:47:23 -i "Intruder in the Dust-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-06.mp3"
ffmpeg -y -ss 1:05:03 -t 0:04:09 -i "Intruder in the Dust-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-07.mp3"
ffmpeg -y -ss 0:00:00 -t 0:42:15 -i "Intruder in the Dust-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-7.5.mp3"
ffmpeg -y -ss 0:42:15 -t 0:26:53 -i "Intruder in the Dust-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:56:50 -i "Intruder in the Dust-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-09.mp3"
ffmpeg -y -ss 0:56:50 -t 0:12:25 -i "Intruder in the Dust-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-10.mp3"
ffmpeg -y -ss 0:00:00 -t 0:43:18 -i "Intruder in the Dust-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-10.5.mp3"
ffmpeg -y -ss 0:43:18 -t 0:24:39 -i "Intruder in the Dust-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-11.mp3"
ffmpeg -y -ss 1:07:57 -t 0:00:27 -i "Intruder in the Dust-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Intruder in the Dust-chapter-12.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv Intruder\ in\ the\ Dust-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'William Faulkner' 'Intruder in the Dust'; cd ..; done




rm *odm
rm *marker
