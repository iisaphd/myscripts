ffmpeg -y -ss 0:00:00 -t 0:10:55 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-00.mp3
ffmpeg -y -ss 0:10:55 -t 0:44:37 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-01.mp3
ffmpeg -y -ss 0:55:32 -t 0:49:53 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-02.mp3
ffmpeg -y -ss 1:45:26 -t 0:53:51 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-03.mp3
ffmpeg -y -ss 2:39:17 -t 0:55:18 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-04.mp3
ffmpeg -y -ss 3:34:36 -t 0:53:20 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-05.mp3
ffmpeg -y -ss 4:27:56 -t 0:48:32 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-06.mp3
ffmpeg -y -ss 5:16:29 -t 0:50:49 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-07.mp3
ffmpeg -y -ss 6:07:18 -t 0:47:51 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-08.mp3
ffmpeg -y -ss 6:55:10 -t 0:53:49 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-09.mp3
ffmpeg -y -ss 7:48:59 -t 0:47:29 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-10.mp3
ffmpeg -y -ss 8:36:29 -t 0:55:02 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-11.mp3
ffmpeg -y -ss 9:31:31 -t 0:52:47 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-12.mp3
ffmpeg -y -ss 10:24:19 -t 0:49:50 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-13.mp3
ffmpeg -y -ss 11:14:09 -t 0:55:16 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-14.mp3
ffmpeg -y -ss 12:09:26 -t 0:55:32 -i HowItAllBegan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HowItAllBegan-chapter-15.mp3
mv HowItAllBegan.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv HowItAllBegan-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'HowItAllBegan'; cd ..; done
for i in `seq 10 15` ; do mkdir $i; mv HowItAllBegan-chapter-$i* $i/; done
for i in `seq 10 15` ; do cd $i; dotracks.sh 'Science' 'HowItAllBegan'; cd ..; done
