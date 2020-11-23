ffmpeg -y -ss 0:00:00 -t 0:39:30 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-01.mp3
ffmpeg -y -ss 0:39:30 -t 0:36:44 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-02.mp3
ffmpeg -y -ss 1:16:14 -t 0:33:29 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-03.mp3
ffmpeg -y -ss 1:49:43 -t 0:37:20 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-04.mp3
ffmpeg -y -ss 2:27:03 -t 0:31:50 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-05.mp3
ffmpeg -y -ss 2:58:53 -t 0:35:12 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-06.mp3
ffmpeg -y -ss 3:34:05 -t 0:33:13 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-07.mp3
ffmpeg -y -ss 4:07:18 -t 0:43:46 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-08.mp3
ffmpeg -y -ss 4:51:04 -t 0:44:05 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-09.mp3
ffmpeg -y -ss 5:35:09 -t 0:35:45 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-10.mp3
ffmpeg -y -ss 6:10:54 -t 0:33:48 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-11.mp3
ffmpeg -y -ss 6:44:42 -t 0:21:52 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-12.mp3
ffmpeg -y -ss 7:06:34 -t 0:20:01 -i SociopathNextDoor.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SociopathNextDoor-chapter-13.mp3
mv SociopathNextDoor.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv SociopathNextDoor-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'History' 'SociopathNextDoor'; cd ..; done
for i in `seq 10 13` ; do mkdir $i; mv SociopathNextDoor-chapter-$i* $i/; done
for i in `seq 10 13` ; do cd $i; dotracks.sh 'History' 'SociopathNextDoor'; cd ..; done
