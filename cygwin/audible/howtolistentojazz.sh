ffmpeg -y -ss 0:00:00 -t 0:11:01 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-0.mp3
ffmpeg -y -ss 0:11:01 -t 0:28:25 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-1.mp3
ffmpeg -y -ss 0:39:26 -t 1:02:30 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-2.mp3
ffmpeg -y -ss 1:41:57 -t 0:39:04 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-3.mp3
ffmpeg -y -ss 2:21:01 -t 0:32:06 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-4.mp3
ffmpeg -y -ss 2:53:08 -t 1:53:20 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-5.mp3
ffmpeg -y -ss 4:46:28 -t 1:35:14 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-6.mp3
ffmpeg -y -ss 6:21:43 -t 0:32:52 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-7.mp3
ffmpeg -y -ss 6:54:35 -t 0:04:22 -i HowToListenToJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowToListenToJazz-chapter-8.mp3
mv HowToListenToJazz.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 0` ; do mkdir $i; mv HowToListenToJazz-chapter-$i* $i/; done
for i in `seq 0 0` ; do cd $i; dotracks.sh 'Ted Gioia' 'HowToListenToJazz'; cd ..; done
