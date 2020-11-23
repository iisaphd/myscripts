ffmpeg -y -ss 00:00:00 -t 00:40:28 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-01.mp3
ffmpeg -y -ss 00:40:28 -t 01:04:30 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-02.mp3
ffmpeg -y -ss 01:44:58 -t 00:07:44 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-03.mp3
ffmpeg -y -ss 01:52:42 -t 00:09:04 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-04.mp3
ffmpeg -y -ss 02:01:46 -t 00:29:30 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-05.mp3
ffmpeg -y -ss 02:31:16 -t 00:50:07 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-06.mp3
ffmpeg -y -ss 03:21:23 -t 00:56:49 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-07.mp3
ffmpeg -y -ss 04:18:12 -t 00:30:45 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-08.mp3
ffmpeg -y -ss 04:48:57 -t 01:10:47 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-09.mp3
ffmpeg -y -ss 05:59:44 -t 00:18:54 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-10.mp3
ffmpeg -y -ss 06:18:38 -t 00:56:41 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-11.mp3
ffmpeg -y -ss 07:15:19 -t 00:48:00 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-12.mp3
ffmpeg -y -ss 08:03:19 -t 01:06:25 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-13.mp3
ffmpeg -y -ss 09:09:44 -t 00:50:13 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-14.mp3
ffmpeg -y -ss 09:59:57 -t 00:44:52 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-15.mp3
ffmpeg -y -ss 10:44:49 -t 00:50:18 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-16.mp3
ffmpeg -y -ss 11:35:07 -t 00:46:30 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-17.mp3
ffmpeg -y -ss 12:21:37 -t 01:09:30 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-18.mp3
ffmpeg -y -ss 13:31:07 -t 00:18:26 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-19.mp3
ffmpeg -y -ss 13:49:33 -t 00:42:38 -i InherentVice.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  InherentVice-Chapter-20.mp3

id3 -a 'Thomas Pynchon' -l InherentVice -n 01 -t InherentVice-01 InherentVice-Chapter-01.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 02 -t InherentVice-02 InherentVice-Chapter-02.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 03 -t InherentVice-03 InherentVice-Chapter-03.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 04 -t InherentVice-04 InherentVice-Chapter-04.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 05 -t InherentVice-05 InherentVice-Chapter-05.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 06 -t InherentVice-06 InherentVice-Chapter-06.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 07 -t InherentVice-07 InherentVice-Chapter-07.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 08 -t InherentVice-08 InherentVice-Chapter-08.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 09 -t InherentVice-09 InherentVice-Chapter-09.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 10 -t InherentVice-10 InherentVice-Chapter-10.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 11 -t InherentVice-11 InherentVice-Chapter-11.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 12 -t InherentVice-12 InherentVice-Chapter-12.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 13 -t InherentVice-13 InherentVice-Chapter-13.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 14 -t InherentVice-14 InherentVice-Chapter-14.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 15 -t InherentVice-15 InherentVice-Chapter-15.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 16 -t InherentVice-16 InherentVice-Chapter-16.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 17 -t InherentVice-17 InherentVice-Chapter-17.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 18 -t InherentVice-18 InherentVice-Chapter-18.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 19 -t InherentVice-19 InherentVice-Chapter-19.mp3
id3 -a 'Thomas Pynchon' -l InherentVice -n 20 -t InherentVice-20 InherentVice-Chapter-20.mp3

mkdir 00
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

mv  InherentVice-Chapter-01.mp3 01/
mv  InherentVice-Chapter-02.mp3 02/
mv  InherentVice-Chapter-03.mp3 03/
mv  InherentVice-Chapter-04.mp3 04/
mv  InherentVice-Chapter-05.mp3 05/
mv  InherentVice-Chapter-06.mp3 06/
mv  InherentVice-Chapter-07.mp3 07/
mv  InherentVice-Chapter-08.mp3 08/
mv  InherentVice-Chapter-09.mp3 09/
mv  InherentVice-Chapter-10.mp3 10/
mv  InherentVice-Chapter-11.mp3 11/
mv  InherentVice-Chapter-12.mp3 12/
mv  InherentVice-Chapter-13.mp3 13/
mv  InherentVice-Chapter-14.mp3 14/
mv  InherentVice-Chapter-15.mp3 15/
mv  InherentVice-Chapter-16.mp3 16/
mv  InherentVice-Chapter-17.mp3 17/
mv  InherentVice-Chapter-18.mp3 18/
mv  InherentVice-Chapter-19.mp3 19/
mv  InherentVice-Chapter-20.mp3 20/

rm InherentVice.mp3
for i in *; do cd $i; for j in *; do mp3splt -t 5.0 $j; rm $j; done; cd ..; done
