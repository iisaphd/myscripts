ffmpeg -y -ss 0:00:00 -t 0:14:30 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-00.mp3
ffmpeg -y -ss 0:14:30 -t 0:49:54 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-01.mp3
ffmpeg -y -ss 1:04:24 -t 0:53:29 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-02.mp3
ffmpeg -y -ss 1:57:53 -t 0:38:58 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-03.mp3
ffmpeg -y -ss 2:36:51 -t 0:59:14 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-04.mp3
ffmpeg -y -ss 3:36:05 -t 0:46:23 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-05.mp3
ffmpeg -y -ss 4:22:28 -t 0:49:56 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-06.mp3
ffmpeg -y -ss 5:12:24 -t 1:02:16 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-07.mp3
ffmpeg -y -ss 6:14:40 -t 0:59:16 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-08.mp3
ffmpeg -y -ss 7:13:56 -t 0:49:54 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-09.mp3
ffmpeg -y -ss 8:03:50 -t 0:44:02 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-10.mp3
ffmpeg -y -ss 8:47:52 -t 0:41:52 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-11.mp3
ffmpeg -y -ss 9:29:44 -t 0:59:07 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-12.mp3
ffmpeg -y -ss 10:28:51 -t 0:50:25 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-13.mp3
ffmpeg -y -ss 11:19:16 -t 0:18:52 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-14.mp3
ffmpeg -y -ss 11:38:08 -t 0:23:28 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-15.mp3
ffmpeg -y -ss 12:01:36 -t 0:54:08 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-16.mp3
ffmpeg -y -ss 12:55:44 -t 0:24:44 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-17.mp3
ffmpeg -y -ss 13:20:28 -t 0:36:37 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-18.mp3
ffmpeg -y -ss 13:57:05 -t 0:57:15 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-19.mp3
ffmpeg -y -ss 14:54:20 -t 0:35:32 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-20.mp3
ffmpeg -y -ss 15:29:52 -t 0:19:36 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-21.mp3
ffmpeg -y -ss 15:49:28 -t 0:05:30 -i GrievingTree.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  GrievingTree-chapter-22.mp3

mv GrievingTree.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv GrievingTree-chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'WotC' 'GrievingTree'; cd ..; done
for i in `seq 10 22` ; do mkdir $i; mv GrievingTree-chapter-$i* $i/; done
for i in `seq 10 22` ; do cd $i; dotracks.sh 'WotC' 'GrievingTree'; cd ..; done
