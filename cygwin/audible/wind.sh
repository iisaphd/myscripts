ffmpeg -y -ss 0:00:00 -t 0:36:59 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-01.mp3
ffmpeg -y -ss 0:36:59 -t 0:14:14 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-02.mp3
ffmpeg -y -ss 0:51:13 -t 0:07:57 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-03.mp3
ffmpeg -y -ss 0:59:10 -t 0:10:57 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-04.mp3
ffmpeg -y -ss 1:10:07 -t 0:06:46 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-05.mp3
ffmpeg -y -ss 1:16:53 -t 0:15:04 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-06.mp3
ffmpeg -y -ss 1:31:57 -t 0:06:26 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-07.mp3
ffmpeg -y -ss 1:38:23 -t 0:13:38 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-08.mp3
ffmpeg -y -ss 1:52:01 -t 0:05:26 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-09.mp3
ffmpeg -y -ss 1:57:27 -t 0:06:22 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-10.mp3
ffmpeg -y -ss 2:03:49 -t 0:06:37 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-11.mp3
ffmpeg -y -ss 2:10:26 -t 0:06:35 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-12.mp3
ffmpeg -y -ss 2:17:01 -t 0:15:23 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-13.mp3
ffmpeg -y -ss 2:32:24 -t 0:03:02 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-14.mp3
ffmpeg -y -ss 2:35:26 -t 0:11:07 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-15.mp3
ffmpeg -y -ss 2:46:33 -t 0:08:44 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-16.mp3
ffmpeg -y -ss 2:55:17 -t 0:07:18 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-17.mp3
ffmpeg -y -ss 3:02:35 -t 0:19:38 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-18.mp3
ffmpeg -y -ss 3:22:13 -t 0:03:35 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-19.mp3
ffmpeg -y -ss 3:25:48 -t 0:09:10 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-20.mp3
ffmpeg -y -ss 3:34:58 -t 0:11:52 -i Pinball.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Pinball-Chapter-21.mp3
id3 -a 'Murakami' -l 'Pinball' -n 01 -t Pinball-01 Pinball-Chapter-01.mp3
id3 -a 'Murakami' -l 'Pinball' -n 02 -t Pinball-02 Pinball-Chapter-02.mp3
id3 -a 'Murakami' -l 'Pinball' -n 03 -t Pinball-03 Pinball-Chapter-03.mp3
id3 -a 'Murakami' -l 'Pinball' -n 04 -t Pinball-04 Pinball-Chapter-04.mp3
id3 -a 'Murakami' -l 'Pinball' -n 05 -t Pinball-05 Pinball-Chapter-05.mp3
id3 -a 'Murakami' -l 'Pinball' -n 06 -t Pinball-06 Pinball-Chapter-06.mp3
id3 -a 'Murakami' -l 'Pinball' -n 07 -t Pinball-07 Pinball-Chapter-07.mp3
id3 -a 'Murakami' -l 'Pinball' -n 08 -t Pinball-08 Pinball-Chapter-08.mp3
id3 -a 'Murakami' -l 'Pinball' -n 09 -t Pinball-09 Pinball-Chapter-09.mp3
id3 -a 'Murakami' -l 'Pinball' -n 10 -t Pinball-10 Pinball-Chapter-10.mp3
id3 -a 'Murakami' -l 'Pinball' -n 11 -t Pinball-11 Pinball-Chapter-11.mp3
id3 -a 'Murakami' -l 'Pinball' -n 12 -t Pinball-12 Pinball-Chapter-12.mp3
id3 -a 'Murakami' -l 'Pinball' -n 13 -t Pinball-13 Pinball-Chapter-13.mp3
id3 -a 'Murakami' -l 'Pinball' -n 14 -t Pinball-14 Pinball-Chapter-14.mp3
id3 -a 'Murakami' -l 'Pinball' -n 15 -t Pinball-15 Pinball-Chapter-15.mp3
id3 -a 'Murakami' -l 'Pinball' -n 16 -t Pinball-16 Pinball-Chapter-16.mp3
id3 -a 'Murakami' -l 'Pinball' -n 17 -t Pinball-17 Pinball-Chapter-17.mp3
id3 -a 'Murakami' -l 'Pinball' -n 18 -t Pinball-18 Pinball-Chapter-18.mp3
id3 -a 'Murakami' -l 'Pinball' -n 19 -t Pinball-19 Pinball-Chapter-19.mp3
id3 -a 'Murakami' -l 'Pinball' -n 20 -t Pinball-20 Pinball-Chapter-20.mp3
id3 -a 'Murakami' -l 'Pinball' -n 21 -t Pinball-21 Pinball-Chapter-21.mp3

mkdir Pinball01
mkdir Pinball02
mkdir Pinball03
mkdir Pinball04
mkdir Pinball05
mkdir Pinball06
mkdir Pinball07
mkdir Pinball08
mkdir Pinball09
mkdir Pinball10
mkdir Pinball11
mkdir Pinball12
mkdir Pinball13
mkdir Pinball14
mkdir Pinball15
mkdir Pinball16
mkdir Pinball17
mkdir Pinball18
mkdir Pinball19
mkdir Pinball20
mkdir Pinball21

mv  Pinball-Chapter-01.mp3 01/
mv  Pinball-Chapter-02.mp3 02/
mv  Pinball-Chapter-03.mp3 03/
mv  Pinball-Chapter-04.mp3 04/
mv  Pinball-Chapter-05.mp3 05/
mv  Pinball-Chapter-06.mp3 06/
mv  Pinball-Chapter-07.mp3 07/
mv  Pinball-Chapter-08.mp3 08/
mv  Pinball-Chapter-09.mp3 09/
mv  Pinball-Chapter-10.mp3 10/
mv  Pinball-Chapter-11.mp3 11/
mv  Pinball-Chapter-12.mp3 12/
mv  Pinball-Chapter-13.mp3 13/
mv  Pinball-Chapter-14.mp3 14/
mv  Pinball-Chapter-15.mp3 15/
mv  Pinball-Chapter-16.mp3 16/
mv  Pinball-Chapter-17.mp3 17/
mv  Pinball-Chapter-18.mp3 18/
mv  Pinball-Chapter-19.mp3 19/
mv  Pinball-Chapter-20.mp3 20/
mv  Pinball-Chapter-21.mp3 21/

rm Pinball.mp3
for i in Pinball*; do cd $i; for j in *; do mp3splt -t 5.0 $j; rm $j; done; cd ..; done
