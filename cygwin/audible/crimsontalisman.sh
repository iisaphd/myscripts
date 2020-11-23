ffmpeg -y -ss 0:00:00 -t 0:35:18 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-01.mp3
ffmpeg -y -ss 0:35:18 -t 0:21:18 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-02.mp3
ffmpeg -y -ss 0:56:36 -t 0:35:18 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-03.mp3
ffmpeg -y -ss 1:31:54 -t 0:30:32 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-04.mp3
ffmpeg -y -ss 2:02:26 -t 0:34:15 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-05.mp3
ffmpeg -y -ss 2:36:41 -t 0:38:01 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-06.mp3
ffmpeg -y -ss 3:14:42 -t 0:32:44 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-07.mp3
ffmpeg -y -ss 3:47:26 -t 0:33:12 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-08.mp3
ffmpeg -y -ss 4:20:38 -t 0:35:54 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-09.mp3
ffmpeg -y -ss 4:56:32 -t 0:34:57 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-10.mp3
ffmpeg -y -ss 5:31:29 -t 0:33:54 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-11.mp3
ffmpeg -y -ss 6:05:23 -t 0:35:39 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-12.mp3
ffmpeg -y -ss 6:41:02 -t 0:30:31 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-13.mp3
ffmpeg -y -ss 7:11:33 -t 0:33:40 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-14.mp3
ffmpeg -y -ss 7:45:13 -t 0:34:54 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-15.mp3
ffmpeg -y -ss 8:20:07 -t 0:30:19 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-16.mp3
ffmpeg -y -ss 8:50:26 -t 0:33:32 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-17.mp3
ffmpeg -y -ss 9:23:58 -t 0:29:17 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-18.mp3
ffmpeg -y -ss 9:53:15 -t 0:31:01 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-19.mp3
ffmpeg -y -ss 10:24:16 -t 0:33:43 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-20.mp3
ffmpeg -y -ss 10:57:59 -t 0:25:07 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-21.mp3
ffmpeg -y -ss 11:23:06 -t 0:09:39 -i CrimsonTalisman.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  CrimsonTalisman-chapter-22.mp3


mv CrimsonTalisman.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 2` ; do mkdir $i; mv CrimsonTalisman-chapter-$i* $i/; done
for i in `seq 0 2` ; do cd $i; dotracks.sh 'WotC' 'CrimsonTalisman'; cd ..; done
