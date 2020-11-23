ffmpeg -y -ss 0:00:00 -t 1:26:33 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-01.mp3
ffmpeg -y -ss 1:26:33 -t 1:22:07 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-02.mp3
ffmpeg -y -ss 2:48:40 -t 0:59:38 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-03.mp3
ffmpeg -y -ss 3:48:18 -t 1:01:07 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-04.mp3
ffmpeg -y -ss 4:49:25 -t 1:06:10 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-05.mp3
ffmpeg -y -ss 5:55:35 -t 1:05:47 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-06.mp3
ffmpeg -y -ss 7:01:22 -t 1:39:08 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-07.mp3
ffmpeg -y -ss 8:40:30 -t 1:40:00 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-08.mp3
ffmpeg -y -ss 10:20:30 -t 1:57:27 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-09.mp3
ffmpeg -y -ss 12:17:57 -t 1:59:11 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-10.mp3
ffmpeg -y -ss 14:17:08 -t 1:35:25 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-11.mp3
ffmpeg -y -ss 15:52:33 -t 1:34:23 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-12.mp3
ffmpeg -y -ss 17:26:56 -t 1:00:24 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-13.mp3
ffmpeg -y -ss 18:27:20 -t 1:01:23 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-14.mp3
ffmpeg -y -ss 19:28:43 -t 1:19:34 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-15.mp3
ffmpeg -y -ss 20:48:17 -t 1:10:51 -i HistoryofJazz.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  HistoryofJazz-Chapter-16.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 01 -t HistoryofJazz-01 HistoryofJazz-Chapter-01.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 02 -t HistoryofJazz-02 HistoryofJazz-Chapter-02.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 03 -t HistoryofJazz-03 HistoryofJazz-Chapter-03.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 04 -t HistoryofJazz-04 HistoryofJazz-Chapter-04.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 05 -t HistoryofJazz-05 HistoryofJazz-Chapter-05.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 06 -t HistoryofJazz-06 HistoryofJazz-Chapter-06.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 07 -t HistoryofJazz-07 HistoryofJazz-Chapter-07.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 08 -t HistoryofJazz-08 HistoryofJazz-Chapter-08.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 09 -t HistoryofJazz-09 HistoryofJazz-Chapter-09.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 10 -t HistoryofJazz-10 HistoryofJazz-Chapter-10.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 11 -t HistoryofJazz-11 HistoryofJazz-Chapter-11.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 12 -t HistoryofJazz-12 HistoryofJazz-Chapter-12.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 13 -t HistoryofJazz-13 HistoryofJazz-Chapter-13.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 14 -t HistoryofJazz-14 HistoryofJazz-Chapter-14.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 15 -t HistoryofJazz-15 HistoryofJazz-Chapter-15.mp3
id3 -a 'Ted Gioia' -l 'HistoryofJazz' -n 16 -t HistoryofJazz-16 HistoryofJazz-Chapter-16.mp3
rm HistoryofJazz.mp3
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
