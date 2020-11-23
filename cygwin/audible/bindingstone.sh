ffmpeg -y -ss 0:00:00 -t 0:20:28 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-00.mp3
ffmpeg -y -ss 0:20:28 -t 0:39:31 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-01.mp3
ffmpeg -y -ss 0:59:59 -t 0:47:10 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-02.mp3
ffmpeg -y -ss 1:47:09 -t 0:35:01 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-03.mp3
ffmpeg -y -ss 2:22:10 -t 0:49:10 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-04.mp3
ffmpeg -y -ss 3:11:20 -t 0:49:03 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-05.mp3
ffmpeg -y -ss 4:00:23 -t 1:00:57 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-06.mp3
ffmpeg -y -ss 5:01:20 -t 0:52:56 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-07.mp3
ffmpeg -y -ss 5:54:16 -t 0:59:33 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-08.mp3
ffmpeg -y -ss 6:53:49 -t 0:46:03 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-09.mp3
ffmpeg -y -ss 7:39:52 -t 0:48:39 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-10.mp3
ffmpeg -y -ss 8:28:31 -t 0:45:08 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-11.mp3
ffmpeg -y -ss 9:13:39 -t 0:53:44 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-12.mp3
ffmpeg -y -ss 10:07:23 -t 0:50:55 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-13.mp3
ffmpeg -y -ss 10:58:18 -t 0:40:14 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-14.mp3
ffmpeg -y -ss 11:38:32 -t 0:37:56 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-15.mp3
ffmpeg -y -ss 12:16:28 -t 0:45:07 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-16.mp3
ffmpeg -y -ss 13:01:35 -t 0:38:26 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-17.mp3
ffmpeg -y -ss 13:40:01 -t 0:07:29 -i BindingStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BindingStone-chapter-18.mp3
mv BindingStone.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv BindingStone-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'WotC' 'BindingStone'; cd ..; done
for i in `seq 10 18` ; do mkdir $i; mv BindingStone-chapter-$i* $i/; done
for i in `seq 10 18` ; do cd $i; dotracks.sh 'WotC' 'BindingStone'; cd ..; done
