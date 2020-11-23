ffmpeg -y -ss 0:00:00 -t 0:31:26 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-00.mp3
ffmpeg -y -ss 0:31:26 -t 0:20:14 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-01.mp3
ffmpeg -y -ss 0:51:40 -t 0:44:14 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-02.mp3
ffmpeg -y -ss 1:35:55 -t 1:16:16 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-03.mp3
ffmpeg -y -ss 2:52:11 -t 0:40:39 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-04.mp3
ffmpeg -y -ss 3:32:51 -t 0:37:21 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-05.mp3
ffmpeg -y -ss 4:10:12 -t 0:24:52 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-06.mp3
ffmpeg -y -ss 4:35:05 -t 0:31:25 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-07.mp3
ffmpeg -y -ss 5:06:30 -t 0:25:06 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-08.mp3
ffmpeg -y -ss 5:31:37 -t 0:19:33 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-09.mp3
ffmpeg -y -ss 5:51:10 -t 0:36:19 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-10.mp3
ffmpeg -y -ss 6:27:30 -t 0:32:41 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-11.mp3
ffmpeg -y -ss 7:00:11 -t 0:25:11 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-12.mp3
ffmpeg -y -ss 7:25:23 -t 0:16:02 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-13.mp3
ffmpeg -y -ss 7:41:25 -t 0:25:58 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-14.mp3
ffmpeg -y -ss 8:07:24 -t 0:52:45 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-15.mp3
ffmpeg -y -ss 9:00:09 -t 0:05:46 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-16.mp3
ffmpeg -y -ss 9:05:56 -t 0:35:36 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-17.mp3
ffmpeg -y -ss 9:41:32 -t 0:28:28 -i TeachingsofDonJuan.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  TeachingsofDonJuan-chapter-18.mp3





mv TeachingsofDonJuan.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv TeachingsofDonJuan-chapter-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Carlos Casteneda' 'TeachingsofDonJuan'; cd ..; done

