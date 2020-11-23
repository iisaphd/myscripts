ffmpeg -y -ss 0:00:00 -t 0:05:15 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-01.mp3
ffmpeg -y -ss 0:05:15 -t 0:09:48 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-02.mp3
ffmpeg -y -ss 0:15:03 -t 0:14:04 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-03.mp3
ffmpeg -y -ss 0:29:07 -t 0:23:08 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-04.mp3
ffmpeg -y -ss 0:52:15 -t 0:08:32 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-05.mp3
ffmpeg -y -ss 1:00:47 -t 0:27:04 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-06.mp3
ffmpeg -y -ss 1:27:51 -t 0:13:52 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-07.mp3
ffmpeg -y -ss 1:41:43 -t 0:18:16 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-08.mp3
ffmpeg -y -ss 1:59:59 -t 0:06:48 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-09.mp3
ffmpeg -y -ss 2:06:47 -t 0:13:01 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-10.mp3
ffmpeg -y -ss 2:19:48 -t 0:24:57 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-11.mp3
ffmpeg -y -ss 2:44:45 -t 0:26:45 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-12.mp3
ffmpeg -y -ss 3:11:30 -t 0:14:05 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-13.mp3
ffmpeg -y -ss 3:25:35 -t 0:16:17 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-14.mp3
ffmpeg -y -ss 3:41:52 -t 0:07:55 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-15.mp3
ffmpeg -y -ss 3:49:47 -t 0:23:27 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-16.mp3
ffmpeg -y -ss 4:13:14 -t 0:08:45 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-17.mp3
ffmpeg -y -ss 4:21:59 -t 0:23:21 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-18.mp3
ffmpeg -y -ss 4:45:20 -t 0:27:49 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-19.mp3
ffmpeg -y -ss 5:13:09 -t 0:30:58 -i BigSur.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BigSur-Chapter-20.mp3


mv BigSur.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv BigSur-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Jack Kerouac' 'BigSur'; cd ..; done
