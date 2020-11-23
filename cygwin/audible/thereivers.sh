ffmpeg -y -ss 0:00:00 -t 1:08:58 -i "The Reivers-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-01.mp3"
ffmpeg -y -ss 0:00:00 -t 0:18:34 -i "The Reivers-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-02.mp3"
ffmpeg -y -ss 0:18:34 -t 0:55:25 -i "The Reivers-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 0:09:52 -i "The Reivers-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-3.5.mp3"
ffmpeg -y -ss 0:09:52 -t 0:46:02 -i "The Reivers-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-4.mp3"
ffmpeg -y -ss 0:55:54 -t 0:15:09 -i "The Reivers-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 0:38:30 -i "The Reivers-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-5.5.mp3"
ffmpeg -y -ss 0:38:30 -t 0:36:35 -i "The Reivers-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-6.mp3"
ffmpeg -y -ss 0:00:00 -t 0:10:52 -i "The Reivers-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-6.5.mp3"
ffmpeg -y -ss 0:10:52 -t 0:55:38 -i "The Reivers-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-7.mp3"
ffmpeg -y -ss 0:00:00 -t 0:58:55 -i "The Reivers-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:58:39 -i "The Reivers-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-09.mp3"
ffmpeg -y -ss 0:00:00 -t 1:02:30 -i "The Reivers-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-10.mp3"
ffmpeg -y -ss 0:00:00 -t 0:27:58 -i "The Reivers-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-11.mp3"
ffmpeg -y -ss 0:27:58 -t 0:47:32 -i "The Reivers-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-12.mp3"
ffmpeg -y -ss 0:00:00 -t 0:03:13 -i "The Reivers-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-12.5.mp3"
ffmpeg -y -ss 0:03:13 -t 1:03:09 -i "The Reivers-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-13.mp3"
ffmpeg -y -ss 1:06:22 -t 0:04:46 -i "The Reivers-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Reivers-chapter-14.mp3"



rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv The\ Reivers-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'William Faulkner' 'The Reivers'; cd ..; done




rm *odm
rm *marker
