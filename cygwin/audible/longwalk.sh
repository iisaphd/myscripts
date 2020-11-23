ffmpeg -y -ss 0:00:00 -t 0:15:07 -i "The Long Walk-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-00.mp3"
ffmpeg -y -ss 0:15:07 -t 1:02:53 -i "The Long Walk-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-01.mp3"
ffmpeg -y -ss 0:00:00 -t 0:31:08 -i "The Long Walk-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-02.mp3"
ffmpeg -y -ss 0:31:08 -t 0:46:52 -i "The Long Walk-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 0:36:25 -i "The Long Walk-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-04.mp3"
ffmpeg -y -ss 0:36:25 -t 0:41:35 -i "The Long Walk-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Long Walk-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-06.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Long Walk-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-07.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Long Walk-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Long Walk-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-09.mp3"
ffmpeg -y -ss 0:00:00 -t 0:37:40 -i "The Long Walk-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-10.mp3"
ffmpeg -y -ss 0:37:40 -t 0:40:20 -i "The Long Walk-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-11.mp3"
ffmpeg -y -ss 0:00:00 -t 0:23:34 -i "The Long Walk-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-12.mp3"
ffmpeg -y -ss 0:23:34 -t 0:54:26 -i "The Long Walk-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-13.mp3"
ffmpeg -y -ss 0:00:00 -t 0:26:42 -i "The Long Walk-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-14.mp3"
ffmpeg -y -ss 0:26:42 -t 0:51:18 -i "The Long Walk-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-15.mp3"
ffmpeg -y -ss 0:00:00 -t 0:33:38 -i "The Long Walk-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-16.mp3"
ffmpeg -y -ss 0:33:38 -t 0:23:35 -i "The Long Walk-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-17.mp3"
ffmpeg -y -ss 0:57:13 -t 0:20:47 -i "The Long Walk-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Long Walk-chapter-18.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 9` ; do mkdir 0$i; mv The\ Long\ Walk-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cp *jpg 0$i/; cd 0$i; dotracks.sh 'Stephen King' 'The Long Walk'; cd ..; done
for i in `seq 10 18` ; do mkdir $i; mv The\ Long\ Walk-chapter-$i* $i/; done
for i in `seq 10 18` ; do cp *jpg $i/; cd $i; dotracks.sh 'Stephen King' 'The Long Walk'; cd ..; done


rm *odm
rm *marker
