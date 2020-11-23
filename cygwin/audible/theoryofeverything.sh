ffmpeg -y -ss 0:00:00 -t 0:22:29 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-1.mp3
ffmpeg -y -ss 0:22:29 -t 0:36:27 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-2.mp3
ffmpeg -y -ss 0:58:56 -t 0:36:47 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-3.mp3
ffmpeg -y -ss 1:35:44 -t 0:34:29 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-4.mp3
ffmpeg -y -ss 2:10:13 -t 0:24:00 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-5.mp3
ffmpeg -y -ss 2:34:14 -t 0:22:32 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-6.mp3
ffmpeg -y -ss 2:56:46 -t 0:23:34 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-7.mp3
ffmpeg -y -ss 3:20:21 -t 0:31:05 -i TheoryofEverything.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TheoryofEverything-chapter-8.mp3

mv TheoryofEverything.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 0` ; do mkdir $i; mv TheoryofEverything-chapter-$i* $i/; done
for i in `seq 0 0` ; do cd $i; dotracks.sh 'Science' 'TheoryofEverything'; cd ..; done
