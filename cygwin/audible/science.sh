ffmpeg -y -ss 0:00:00 -t 0:00:24 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-00.mp3
ffmpeg -y -ss 0:00:24 -t 0:05:49 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-01.mp3
ffmpeg -y -ss 0:06:13 -t 0:38:49 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-02.mp3
ffmpeg -y -ss 0:45:02 -t 0:41:58 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-03.mp3
ffmpeg -y -ss 1:27:00 -t 0:56:18 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-04.mp3
ffmpeg -y -ss 2:23:18 -t 1:00:27 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-05.mp3
ffmpeg -y -ss 3:23:45 -t 0:52:38 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-06.mp3
ffmpeg -y -ss 4:16:23 -t 0:54:15 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-07.mp3
ffmpeg -y -ss 5:10:38 -t 0:48:08 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-08.mp3
ffmpeg -y -ss 5:58:46 -t 1:02:57 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-09.mp3
ffmpeg -y -ss 7:01:43 -t 1:14:35 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-10.mp3
ffmpeg -y -ss 8:16:18 -t 0:00:41 -i 13.8.AgeoftheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  13.8.AgeoftheUniverse.mp3-Chapter-11.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 00 -t 13.8.AgeoftheUniverse.mp3-00 13.8.AgeoftheUniverse.mp3-Chapter-00.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 01 -t 13.8.AgeoftheUniverse.mp3-01 13.8.AgeoftheUniverse.mp3-Chapter-01.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 02 -t 13.8.AgeoftheUniverse.mp3-02 13.8.AgeoftheUniverse.mp3-Chapter-02.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 03 -t 13.8.AgeoftheUniverse.mp3-03 13.8.AgeoftheUniverse.mp3-Chapter-03.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 04 -t 13.8.AgeoftheUniverse.mp3-04 13.8.AgeoftheUniverse.mp3-Chapter-04.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 05 -t 13.8.AgeoftheUniverse.mp3-05 13.8.AgeoftheUniverse.mp3-Chapter-05.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 06 -t 13.8.AgeoftheUniverse.mp3-06 13.8.AgeoftheUniverse.mp3-Chapter-06.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 07 -t 13.8.AgeoftheUniverse.mp3-07 13.8.AgeoftheUniverse.mp3-Chapter-07.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 08 -t 13.8.AgeoftheUniverse.mp3-08 13.8.AgeoftheUniverse.mp3-Chapter-08.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 09 -t 13.8.AgeoftheUniverse.mp3-09 13.8.AgeoftheUniverse.mp3-Chapter-09.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 10 -t 13.8.AgeoftheUniverse.mp3-10 13.8.AgeoftheUniverse.mp3-Chapter-10.mp3
id3 -a 'Science' -l 13.8.AgeoftheUniverse.mp3 -n 11 -t 13.8.AgeoftheUniverse.mp3-11 13.8.AgeoftheUniverse.mp3-Chapter-11.mp3
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
mv p3-00 13.8.AgeoftheUniverse.mp3-Chapter-00.mp3 00/
mv p3-01 13.8.AgeoftheUniverse.mp3-Chapter-01.mp3 01/
mv p3-02 13.8.AgeoftheUniverse.mp3-Chapter-02.mp3 02/
mv p3-03 13.8.AgeoftheUniverse.mp3-Chapter-03.mp3 03/
mv p3-04 13.8.AgeoftheUniverse.mp3-Chapter-04.mp3 04/
mv p3-05 13.8.AgeoftheUniverse.mp3-Chapter-05.mp3 05/
mv p3-06 13.8.AgeoftheUniverse.mp3-Chapter-06.mp3 06/
mv p3-07 13.8.AgeoftheUniverse.mp3-Chapter-07.mp3 07/
mv p3-08 13.8.AgeoftheUniverse.mp3-Chapter-08.mp3 08/
mv p3-09 13.8.AgeoftheUniverse.mp3-Chapter-09.mp3 09/
mv p3-10 13.8.AgeoftheUniverse.mp3-Chapter-10.mp3 10/
mv p3-11 13.8.AgeoftheUniverse.mp3-Chapter-11.mp3 11/
rm 13.8.AgeoftheUniverse.mp3
for i in *; do cd $i; for j in *; do mp3splt -t 5.0 $j; rm $j; done; cd ..; done
