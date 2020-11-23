ffmpeg -y -ss 0:00:00 -t 0:01:55 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-00.mp3
ffmpeg -y -ss 0:01:55 -t 0:28:09 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-01.mp3
ffmpeg -y -ss 0:30:04 -t 1:06:43 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-02.mp3
ffmpeg -y -ss 1:36:47 -t 0:32:48 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-03.mp3
ffmpeg -y -ss 2:09:35 -t 0:31:26 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-04.mp3
ffmpeg -y -ss 2:41:01 -t 0:21:54 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-05.mp3
ffmpeg -y -ss 3:02:55 -t 0:43:08 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-06.mp3
ffmpeg -y -ss 3:46:03 -t 0:50:07 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-07.mp3
ffmpeg -y -ss 4:36:10 -t 0:37:02 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-08.mp3
ffmpeg -y -ss 5:13:12 -t 0:45:45 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-09.mp3
ffmpeg -y -ss 5:58:57 -t 0:47:52 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-10.mp3
ffmpeg -y -ss 6:46:49 -t 0:24:26 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-11.mp3
ffmpeg -y -ss 7:11:15 -t 0:48:21 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-12.mp3
ffmpeg -y -ss 7:59:36 -t 0:28:51 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-13.mp3
ffmpeg -y -ss 8:28:27 -t 0:34:28 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-14.mp3
ffmpeg -y -ss 9:02:55 -t 0:49:18 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-15.mp3
ffmpeg -y -ss 9:52:13 -t 0:23:41 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-16.mp3
ffmpeg -y -ss 10:15:54 -t 0:29:18 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-17.mp3
ffmpeg -y -ss 10:45:12 -t 0:16:03 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-18.mp3
ffmpeg -y -ss 11:01:15 -t 0:10:21 -i KingoftheVagabonds.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KingoftheVagabonds-Chapter-19.mp3
mv KingoftheVagabonds.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv KingoftheVagabonds-Chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Neal Stephenson' 'KingoftheVagabonds'; cd ..; done
