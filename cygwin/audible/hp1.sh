ffmpeg -y -ss 0:00:00 -t 0:00:30 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-00.mp3
ffmpeg -y -ss 0:00:30 -t 0:28:50 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-01.mp3
ffmpeg -y -ss 0:29:20 -t 0:21:45 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-02.mp3
ffmpeg -y -ss 0:51:05 -t 0:24:15 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-03.mp3
ffmpeg -y -ss 1:15:20 -t 0:24:22 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-04.mp3
ffmpeg -y -ss 1:39:42 -t 0:43:55 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-05.mp3
ffmpeg -y -ss 2:23:37 -t 0:38:14 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-06.mp3
ffmpeg -y -ss 3:01:51 -t 0:28:49 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-07.mp3
ffmpeg -y -ss 3:30:40 -t 0:18:32 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-08.mp3
ffmpeg -y -ss 3:49:12 -t 0:30:58 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-09.mp3
ffmpeg -y -ss 0:00:00 -t 0:25:32 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-10.mp3
ffmpeg -y -ss 0:25:32 -t 0:21:14 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-11.mp3
ffmpeg -y -ss 0:46:46 -t 0:35:38 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-12.mp3
ffmpeg -y -ss 1:22:24 -t 0:19:47 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-13.mp3
ffmpeg -y -ss 1:42:11 -t 0:21:15 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-14.mp3
ffmpeg -y -ss 2:03:26 -t 0:32:21 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-15.mp3
ffmpeg -y -ss 2:35:47 -t 0:41:13 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-16.mp3
ffmpeg -y -ss 3:17:00 -t 0:39:22 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-17.mp3
ffmpeg -y -ss 3:56:22 -t 0:00:53 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-18.mp3
ffmpeg -y -ss 3:57:15 -t 0:16:01 -i SorcerersStone.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SorcerersStone-Chapter-19.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 00 -t SorcerersStone-00 SorcerersStone-Chapter-00.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 01 -t SorcerersStone-01 SorcerersStone-Chapter-01.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 02 -t SorcerersStone-02 SorcerersStone-Chapter-02.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 03 -t SorcerersStone-03 SorcerersStone-Chapter-03.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 04 -t SorcerersStone-04 SorcerersStone-Chapter-04.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 05 -t SorcerersStone-05 SorcerersStone-Chapter-05.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 06 -t SorcerersStone-06 SorcerersStone-Chapter-06.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 07 -t SorcerersStone-07 SorcerersStone-Chapter-07.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 08 -t SorcerersStone-08 SorcerersStone-Chapter-08.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 09 -t SorcerersStone-09 SorcerersStone-Chapter-09.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 10 -t SorcerersStone-10 SorcerersStone-Chapter-10.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 11 -t SorcerersStone-11 SorcerersStone-Chapter-11.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 12 -t SorcerersStone-12 SorcerersStone-Chapter-12.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 13 -t SorcerersStone-13 SorcerersStone-Chapter-13.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 14 -t SorcerersStone-14 SorcerersStone-Chapter-14.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 15 -t SorcerersStone-15 SorcerersStone-Chapter-15.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 16 -t SorcerersStone-16 SorcerersStone-Chapter-16.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 17 -t SorcerersStone-17 SorcerersStone-Chapter-17.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 18 -t SorcerersStone-18 SorcerersStone-Chapter-18.mp3
id3 -a 'JK Rowling' -l 'SorcerersStone' -n 19 -t SorcerersStone-19 SorcerersStone-Chapter-19.mp3
rm SorcerersStone.mp3
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
