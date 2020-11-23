ffmpeg -y -ss 0:00:00 -t 0:01:57 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-00.mp3"
ffmpeg -y -ss 0:01:57 -t 0:29:39 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-01.mp3"
ffmpeg -y -ss 0:31:36 -t 0:30:54 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-02.mp3"
ffmpeg -y -ss 1:02:30 -t 0:29:54 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-03.mp3"
ffmpeg -y -ss 1:32:24 -t 0:30:34 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-04.mp3"
ffmpeg -y -ss 2:02:58 -t 0:30:23 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-05.mp3"
ffmpeg -y -ss 2:33:21 -t 0:29:30 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-06.mp3"
ffmpeg -y -ss 3:02:51 -t 0:31:01 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-07.mp3"
ffmpeg -y -ss 3:33:52 -t 0:29:44 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-08.mp3"
ffmpeg -y -ss 4:03:36 -t 0:28:44 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-09.mp3"
ffmpeg -y -ss 4:32:20 -t 0:30:54 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-10.mp3"
ffmpeg -y -ss 5:03:14 -t 0:30:50 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-11.mp3"
ffmpeg -y -ss 5:34:04 -t 0:29:30 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-12.mp3"
ffmpeg -y -ss 6:03:34 -t 0:00:36 -i "The Iliad of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Iliad of Homer-chapter-13.mp3"
mv The\ Iliad\ of\ Homer.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 9` ; do mkdir 0$i; mv The\ Iliad\ of\ Homer-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Great Courses' 'The Iliad of Homer'; cd ..; done
for i in `seq 10 13` ; do mkdir $i; mv The\ Iliad\ of\ Homer-chapter-$i* $i/; done
for i in `seq 10 13` ; do cd $i; dotracks.sh 'Great Courses' 'The Iliad of Homer'; cd ..; done
