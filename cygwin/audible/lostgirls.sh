ffmpeg -y -ss 0:00:00 -t 0:01:05 -i "Lost Girls-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-00.mp3"
ffmpeg -y -ss 0:01:05 -t 0:08:23 -i "Lost Girls-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-01.mp3"
ffmpeg -y -ss 0:09:28 -t 0:19:49 -i "Lost Girls-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-02.mp3"
ffmpeg -y -ss 0:29:17 -t 0:20:02 -i "Lost Girls-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-03.mp3"
ffmpeg -y -ss 0:49:19 -t 0:15:16 -i "Lost Girls-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 0:34:57 -i "Lost Girls-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-05.mp3"
ffmpeg -y -ss 0:34:57 -t 0:27:26 -i "Lost Girls-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-06.mp3"
ffmpeg -y -ss 0:00:00 -t 0:31:04 -i "Lost Girls-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-07.mp3"
ffmpeg -y -ss 0:31:04 -t 0:32:20 -i "Lost Girls-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:43:36 -i "Lost Girls-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-09.mp3"
ffmpeg -y -ss 0:43:36 -t 0:19:49 -i "Lost Girls-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-10.mp3"
ffmpeg -y -ss 0:00:00 -t 0:35:18 -i "Lost Girls-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-11.mp3"
ffmpeg -y -ss 0:35:18 -t 0:42:08 -i "Lost Girls-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-12.mp3"
ffmpeg -y -ss 0:00:00 -t 1:12:57 -i "Lost Girls-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-13.mp3"
ffmpeg -y -ss 0:00:00 -t 0:32:04 -i "Lost Girls-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-14.mp3"
ffmpeg -y -ss 0:32:04 -t 0:45:50 -i "Lost Girls-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-15.mp3"
ffmpeg -y -ss 0:00:00 -t 0:51:40 -i "Lost Girls-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-16.mp3"
ffmpeg -y -ss 0:51:40 -t 0:12:00 -i "Lost Girls-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-17.mp3"
ffmpeg -y -ss 0:00:00 -t 0:55:37 -i "Lost Girls-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-18.mp3"
ffmpeg -y -ss 0:00:00 -t 0:10:40 -i "Lost Girls-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-19.mp3"
ffmpeg -y -ss 0:10:40 -t 0:54:56 -i "Lost Girls-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-20.mp3"
ffmpeg -y -ss 1:05:36 -t 0:00:32 -i "Lost Girls-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Lost Girls-chapter-21.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 2` ; do mkdir $i; mv Lost\ Girls-chapter-$i* $i/;  done
for i in `seq 0 2` ; do cp *jpg $i/; cd $i; dotracks.sh 'Robery Kolker' 'Lost Girls'; cd ..; done




rm *odm
rm *marker
