ffmpeg -y -ss 0:00:00 -t 0:20:31 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-01.mp3
ffmpeg -y -ss 0:20:31 -t 0:21:56 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-02.mp3
ffmpeg -y -ss 0:42:27 -t 0:22:59 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-03.mp3
ffmpeg -y -ss 1:05:26 -t 0:12:50 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-04.mp3
ffmpeg -y -ss 1:18:16 -t 0:19:25 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-05.mp3
ffmpeg -y -ss 1:37:41 -t 0:21:51 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-06.mp3
ffmpeg -y -ss 1:59:32 -t 0:37:26 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-07.mp3
ffmpeg -y -ss 2:36:58 -t 0:35:10 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-08.mp3
ffmpeg -y -ss 3:12:08 -t 0:17:09 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-09.mp3
ffmpeg -y -ss 3:29:17 -t 0:18:36 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-10.mp3
ffmpeg -y -ss 3:47:53 -t 0:24:52 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-11.mp3
ffmpeg -y -ss 4:12:45 -t 0:22:34 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-12.mp3
ffmpeg -y -ss 4:35:19 -t 0:22:38 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-13.mp3
ffmpeg -y -ss 4:57:57 -t 0:33:02 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-14.mp3
ffmpeg -y -ss 5:30:59 -t 0:27:37 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-15.mp3
ffmpeg -y -ss 5:58:36 -t 0:33:19 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-16.mp3
ffmpeg -y -ss 6:31:55 -t 0:38:13 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-17.mp3
ffmpeg -y -ss 7:10:08 -t 0:29:20 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-18.mp3
ffmpeg -y -ss 7:39:28 -t 0:30:46 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-19.mp3
ffmpeg -y -ss 8:10:14 -t 0:24:53 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-20.mp3
ffmpeg -y -ss 8:35:07 -t 0:13:51 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-21.mp3
ffmpeg -y -ss 8:48:58 -t 0:12:29 -i ThievesofBlood.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ThievesofBlood-Chapter-22.mp3













mv ThievesofBlood.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv ThievesofBlood-Chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'Tim Waggoner' 'ThievesofBlood'; cd ..; done
