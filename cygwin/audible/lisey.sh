ffmpeg -y -ss 0:00:00 -t 0:27:57 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-01.mp3
ffmpeg -y -ss 0:27:57 -t 0:56:30 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-02.mp3
ffmpeg -y -ss 1:24:27 -t 0:50:32 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-03.mp3
ffmpeg -y -ss 2:14:59 -t 0:50:00 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-04.mp3
ffmpeg -y -ss 3:04:59 -t 0:53:21 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-05.mp3
ffmpeg -y -ss 3:58:20 -t 0:52:59 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-06.mp3
ffmpeg -y -ss 4:51:19 -t 1:13:46 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-07.mp3
ffmpeg -y -ss 6:05:05 -t 0:37:43 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-08.mp3
ffmpeg -y -ss 6:42:48 -t 0:44:47 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-09.mp3
ffmpeg -y -ss 7:27:35 -t 1:11:24 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-10.mp3
ffmpeg -y -ss 8:38:59 -t 0:31:10 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-11.mp3
ffmpeg -y -ss 9:10:09 -t 1:07:37 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-12.mp3
ffmpeg -y -ss 10:17:46 -t 1:14:20 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-13.mp3
ffmpeg -y -ss 11:32:06 -t 0:55:31 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-14.mp3
ffmpeg -y -ss 12:27:37 -t 0:46:15 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-15.mp3
ffmpeg -y -ss 13:13:52 -t 0:54:29 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-16.mp3
ffmpeg -y -ss 14:08:21 -t 1:01:45 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-17.mp3
ffmpeg -y -ss 15:10:06 -t 0:48:06 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-18.mp3
ffmpeg -y -ss 15:58:12 -t 0:59:13 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-19.mp3
ffmpeg -y -ss 16:57:25 -t 0:52:22 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-20.mp3
ffmpeg -y -ss 17:49:47 -t 1:02:23 -i LiseysStory.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  LiseysStory-Chapter-21.mp3

mv LiseysStory.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv LiseysStory-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Stephen King' 'LiseysStory'; cd ..; done
for i in `seq 10 21` ; do mkdir $i; mv LiseysStory-Chapter-$i* $i/; done
for i in `seq 10 21` ; do cd $i; dotracks.sh 'Stephen King' 'LiseysStory'; cd ..; done
