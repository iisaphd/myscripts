ffmpeg -y -ss 0:00:00 -t 0:12:58 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-1.mp3
ffmpeg -y -ss 0:12:58 -t 0:20:58 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-2.mp3
ffmpeg -y -ss 0:33:56 -t 1:03:57 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-3.mp3
ffmpeg -y -ss 1:37:53 -t 0:16:20 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-4.mp3
ffmpeg -y -ss 1:54:13 -t 0:34:24 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-5.mp3
ffmpeg -y -ss 2:28:37 -t 0:20:28 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-6.mp3
ffmpeg -y -ss 2:49:05 -t 0:41:24 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-7.mp3
ffmpeg -y -ss 3:30:29 -t 0:36:00 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-8.mp3
ffmpeg -y -ss 4:06:29 -t 0:20:23 -i Cryptography.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cryptography-chapter-9.mp3
mv Cryptography.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 0` ; do mkdir $i; mv Cryptography-chapter-$i* $i/; done
for i in `seq 0 0` ; do cd $i; dotracks.sh 'Science' 'Cryptography'; cd ..; done
