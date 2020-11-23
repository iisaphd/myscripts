ffmpeg -y -ss 00:00:00 -t 00:21:00 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-01.mp3
ffmpeg -y -ss 00:21:00 -t 00:54:51 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-02.mp3
ffmpeg -y -ss 01:15:51 -t 00:44:56 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-03.mp3
ffmpeg -y -ss 02:00:47 -t 00:29:05 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-04.mp3
ffmpeg -y -ss 02:29:52 -t 01:58:21 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-05.mp3
ffmpeg -y -ss 04:28:13 -t 01:39:29 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-06.mp3
ffmpeg -y -ss 06:07:42 -t 01:10:03 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-07.mp3
ffmpeg -y -ss 07:17:45 -t 00:42:19 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-08.mp3
ffmpeg -y -ss 08:00:04 -t 01:56:15 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-09.mp3
ffmpeg -y -ss 09:56:19 -t 00:19:06 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-10.mp3
ffmpeg -y -ss 10:15:25 -t 00:34:53 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-11.mp3
ffmpeg -y -ss 10:50:18 -t 00:05:02 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-12.mp3
ffmpeg -y -ss 10:55:20 -t 01:24:32 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-13.mp3
ffmpeg -y -ss 12:19:52 -t 00:26:35 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-14.mp3
ffmpeg -y -ss 12:46:27 -t 00:23:38 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-15.mp3
ffmpeg -y -ss 13:10:05 -t 01:03:55 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-16.mp3
ffmpeg -y -ss 14:14:00 -t 01:07:29 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-17.mp3
ffmpeg -y -ss 15:21:29 -t 00:41:10 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-18.mp3
ffmpeg -y -ss 16:02:39 -t 00:54:40 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-19.mp3
ffmpeg -y -ss 16:57:19 -t 00:25:34 -i RoseMadder.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  RoseMadder-Chapter-20.mp3

id3 -a 'Stephen King' -l RoseMadder -n 01 -t RoseMadder-01 RoseMadder-Chapter-01.mp3
id3 -a 'Stephen King' -l RoseMadder -n 02 -t RoseMadder-02 RoseMadder-Chapter-02.mp3
id3 -a 'Stephen King' -l RoseMadder -n 03 -t RoseMadder-03 RoseMadder-Chapter-03.mp3
id3 -a 'Stephen King' -l RoseMadder -n 04 -t RoseMadder-04 RoseMadder-Chapter-04.mp3
id3 -a 'Stephen King' -l RoseMadder -n 05 -t RoseMadder-05 RoseMadder-Chapter-05.mp3
id3 -a 'Stephen King' -l RoseMadder -n 06 -t RoseMadder-06 RoseMadder-Chapter-06.mp3
id3 -a 'Stephen King' -l RoseMadder -n 07 -t RoseMadder-07 RoseMadder-Chapter-07.mp3
id3 -a 'Stephen King' -l RoseMadder -n 08 -t RoseMadder-08 RoseMadder-Chapter-08.mp3
id3 -a 'Stephen King' -l RoseMadder -n 09 -t RoseMadder-09 RoseMadder-Chapter-09.mp3
id3 -a 'Stephen King' -l RoseMadder -n 10 -t RoseMadder-10 RoseMadder-Chapter-10.mp3
id3 -a 'Stephen King' -l RoseMadder -n 11 -t RoseMadder-11 RoseMadder-Chapter-11.mp3
id3 -a 'Stephen King' -l RoseMadder -n 12 -t RoseMadder-12 RoseMadder-Chapter-12.mp3
id3 -a 'Stephen King' -l RoseMadder -n 13 -t RoseMadder-13 RoseMadder-Chapter-13.mp3
id3 -a 'Stephen King' -l RoseMadder -n 14 -t RoseMadder-14 RoseMadder-Chapter-14.mp3
id3 -a 'Stephen King' -l RoseMadder -n 15 -t RoseMadder-15 RoseMadder-Chapter-15.mp3
id3 -a 'Stephen King' -l RoseMadder -n 16 -t RoseMadder-16 RoseMadder-Chapter-16.mp3
id3 -a 'Stephen King' -l RoseMadder -n 17 -t RoseMadder-17 RoseMadder-Chapter-17.mp3
id3 -a 'Stephen King' -l RoseMadder -n 18 -t RoseMadder-18 RoseMadder-Chapter-18.mp3
id3 -a 'Stephen King' -l RoseMadder -n 19 -t RoseMadder-19 RoseMadder-Chapter-19.mp3
id3 -a 'Stephen King' -l RoseMadder -n 20 -t RoseMadder-20 RoseMadder-Chapter-20.mp3

mkdir 01
mkdir 02
mkdir 03
mkdir 04
mkdir 05
mkdir 06
mkdir 07
mkdir 08
mkdir 09
mkdir 10
mkdir 11
mkdir 12
mkdir 13
mkdir 14
mkdir 15
mkdir 16
mkdir 17
mkdir 18
mkdir 19
mkdir 20

mv  RoseMadder-Chapter-01.mp3 01/
mv  RoseMadder-Chapter-02.mp3 02/
mv  RoseMadder-Chapter-03.mp3 03/
mv  RoseMadder-Chapter-04.mp3 04/
mv  RoseMadder-Chapter-05.mp3 05/
mv  RoseMadder-Chapter-06.mp3 06/
mv  RoseMadder-Chapter-07.mp3 07/
mv  RoseMadder-Chapter-08.mp3 08/
mv  RoseMadder-Chapter-09.mp3 09/
mv  RoseMadder-Chapter-10.mp3 10/
mv  RoseMadder-Chapter-11.mp3 11/
mv  RoseMadder-Chapter-12.mp3 12/
mv  RoseMadder-Chapter-13.mp3 13/
mv  RoseMadder-Chapter-14.mp3 14/
mv  RoseMadder-Chapter-15.mp3 15/
mv  RoseMadder-Chapter-16.mp3 16/
mv  RoseMadder-Chapter-17.mp3 17/
mv  RoseMadder-Chapter-18.mp3 18/
mv  RoseMadder-Chapter-19.mp3 19/
mv  RoseMadder-Chapter-20.mp3 20/


rm RoseMadder.mp3
for i in *; do cd $i; for j in *; do mp3splt -t 5.0 $j; rm $j; done; cd ..; done
