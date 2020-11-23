ffmpeg -y -ss 0:00:00 -t 0:16:01 -i "The Mist-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-01.mp3"
ffmpeg -y -ss 0:16:01 -t 1:02:59 -i "The Mist-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 0:29:08 -i "The Mist-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-03.mp3"
ffmpeg -y -ss 0:29:08 -t 0:49:52 -i "The Mist-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 0:23:46 -i "The Mist-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-05.mp3"
ffmpeg -y -ss 0:23:46 -t 0:55:14 -i "The Mist-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-06.mp3"
ffmpeg -y -ss 0:00:00 -t 0:32:27 -i "The Mist-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-07.mp3"
ffmpeg -y -ss 0:32:27 -t 0:46:33 -i "The Mist-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:25:10 -i "The Mist-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-09.mp3"
ffmpeg -y -ss 0:25:10 -t 0:24:58 -i "The Mist-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-10.mp3"
ffmpeg -y -ss 0:50:08 -t 0:23:05 -i "The Mist-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-11.mp3"
ffmpeg -y -ss 1:13:13 -t 0:05:47 -i "The Mist-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Mist-chapter-12.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 1 9` ; do mkdir 0$i; mv The\ Mist-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cp *jpg 0$i/; cd 0$i; dotracks.sh 'Stephen King' 'The Mist'; cd ..; done
for i in `seq 10 12` ; do mkdir $i; mv The\ Mist-chapter-$i* $i/; done
for i in `seq 10 12` ; do cp *jpg $i/; cd $i; dotracks.sh 'Stephen King' 'The Mist'; cd ..; done


rm *odm
rm *marker
