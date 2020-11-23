ffmpeg -y -ss 0:00:00 -t 0:01:57 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-00.mp3"
ffmpeg -y -ss 0:01:57 -t 0:30:49 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-01.mp3"
ffmpeg -y -ss 0:32:46 -t 0:31:23 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-02.mp3"
ffmpeg -y -ss 1:04:09 -t 0:30:31 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-03.mp3"
ffmpeg -y -ss 1:34:40 -t 0:30:39 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-04.mp3"
ffmpeg -y -ss 2:05:19 -t 0:30:46 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-05.mp3"
ffmpeg -y -ss 2:36:05 -t 0:28:47 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-06.mp3"
ffmpeg -y -ss 3:04:52 -t 0:29:37 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-07.mp3"
ffmpeg -y -ss 3:34:29 -t 0:28:36 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-08.mp3"
ffmpeg -y -ss 4:03:05 -t 0:30:23 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-09.mp3"
ffmpeg -y -ss 4:33:28 -t 0:30:49 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-10.mp3"
ffmpeg -y -ss 5:04:17 -t 0:31:18 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-11.mp3"
ffmpeg -y -ss 5:35:35 -t 0:29:36 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-12.mp3"
ffmpeg -y -ss 6:05:11 -t 0:00:35 -i "The Odyssey of Homer.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Odyssey of Homer-chapter-13.mp3"
mv The\ Odyssey\ of\ Homer.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 9` ; do mkdir 0$i; mv The\ Odyssey\ of\ Homer-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Great Courses' 'The Odyssey of Homer'; cd ..; done
for i in `seq 10 13` ; do mkdir $i; mv The\ Odyssey\ of\ Homer-chapter-$i* $i/; done
for i in `seq 10 13` ; do cd $i; dotracks.sh 'Great Courses' 'The Odyssey of Homer'; cd ..; done

