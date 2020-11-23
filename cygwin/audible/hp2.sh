ffmpeg -y -ss 0:00:00 -t 0:15:52 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-01.mp3
ffmpeg -y -ss 0:15:52 -t 0:17:53 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-02.mp3
ffmpeg -y -ss 0:33:45 -t 0:26:42 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-03.mp3
ffmpeg -y -ss 1:00:27 -t 0:35:51 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-04.mp3
ffmpeg -y -ss 1:36:18 -t 0:33:07 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-05.mp3
ffmpeg -y -ss 2:09:25 -t 0:29:00 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-06.mp3
ffmpeg -y -ss 2:38:25 -t 0:28:13 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-07.mp3
ffmpeg -y -ss 3:06:38 -t 0:29:25 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-08.mp3
ffmpeg -y -ss 3:36:03 -t 0:33:45 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-09.mp3
ffmpeg -y -ss 4:09:48 -t 0:32:36 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-10.mp3
ffmpeg -y -ss 4:42:24 -t 0:37:41 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-11.mp3
ffmpeg -y -ss 5:20:05 -t 0:32:51 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-12.mp3
ffmpeg -y -ss 5:52:56 -t 0:34:15 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-13.mp3
ffmpeg -y -ss 6:27:11 -t 0:25:06 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-14.mp3
ffmpeg -y -ss 6:52:17 -t 0:29:46 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-15.mp3
ffmpeg -y -ss 7:22:03 -t 0:36:17 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-16.mp3
ffmpeg -y -ss 7:58:20 -t 0:36:22 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-17.mp3
ffmpeg -y -ss 8:34:42 -t 0:27:19 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-18.mp3
ffmpeg -y -ss 9:02:01 -t 0:22:26 -i ChamberofSecrets.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChamberofSecrets-Chapter-19.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 01 -t ChamberofSecrets-01 ChamberofSecrets-Chapter-01.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 02 -t ChamberofSecrets-02 ChamberofSecrets-Chapter-02.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 03 -t ChamberofSecrets-03 ChamberofSecrets-Chapter-03.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 04 -t ChamberofSecrets-04 ChamberofSecrets-Chapter-04.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 05 -t ChamberofSecrets-05 ChamberofSecrets-Chapter-05.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 06 -t ChamberofSecrets-06 ChamberofSecrets-Chapter-06.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 07 -t ChamberofSecrets-07 ChamberofSecrets-Chapter-07.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 08 -t ChamberofSecrets-08 ChamberofSecrets-Chapter-08.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 09 -t ChamberofSecrets-09 ChamberofSecrets-Chapter-09.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 10 -t ChamberofSecrets-10 ChamberofSecrets-Chapter-10.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 11 -t ChamberofSecrets-11 ChamberofSecrets-Chapter-11.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 12 -t ChamberofSecrets-12 ChamberofSecrets-Chapter-12.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 13 -t ChamberofSecrets-13 ChamberofSecrets-Chapter-13.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 14 -t ChamberofSecrets-14 ChamberofSecrets-Chapter-14.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 15 -t ChamberofSecrets-15 ChamberofSecrets-Chapter-15.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 16 -t ChamberofSecrets-16 ChamberofSecrets-Chapter-16.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 17 -t ChamberofSecrets-17 ChamberofSecrets-Chapter-17.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 18 -t ChamberofSecrets-18 ChamberofSecrets-Chapter-18.mp3
id3 -a 'JK Rowling' -l 'ChamberofSecrets' -n 19 -t ChamberofSecrets-19 ChamberofSecrets-Chapter-19.mp3
rm ChamberofSecrets.mp3
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
