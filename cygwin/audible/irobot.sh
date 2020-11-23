ffmpeg -y -ss 0:00:00 -t 0:08:26 -i "I, Robot-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-00.mp3"
ffmpeg -y -ss 0:08:26 -t 0:51:13 -i "I, Robot-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-01.mp3"
ffmpeg -y -ss 0:59:39 -t 0:19:21 -i "I, Robot-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-02.mp3"
ffmpeg -y -ss 0:00:00 -t 0:34:11 -i "I, Robot-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-02a.mp3"
ffmpeg -y -ss 0:34:11 -t 0:44:49 -i "I, Robot-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-03.mp3"
ffmpeg -y -ss 0:00:00 -t 0:09:46 -i "I, Robot-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-03a.mp3"
ffmpeg -y -ss 0:09:46 -t 0:49:56 -i "I, Robot-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-04.mp3"
ffmpeg -y -ss 0:59:42 -t 0:19:18 -i "I, Robot-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-05.mp3"
ffmpeg -y -ss 0:00:00 -t 0:31:03 -i "I, Robot-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-05a.mp3"
ffmpeg -y -ss 0:31:03 -t 0:47:57 -i "I, Robot-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-06.mp3"
ffmpeg -y -ss 0:00:00 -t 0:29:41 -i "I, Robot-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-06a.mp3"
ffmpeg -y -ss 0:29:41 -t 0:49:19 -i "I, Robot-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-07.mp3"
ffmpeg -y -ss 0:00:00 -t 0:12:45 -i "I, Robot-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-07a.mp3"
ffmpeg -y -ss 0:12:45 -t 1:06:15 -i "I, Robot-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:03:54 -i "I, Robot-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-08a.mp3"
ffmpeg -y -ss 0:03:54 -t 1:15:06 -i "I, Robot-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "I, Robot-part1-09.mp3"







rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 9` ; do mkdir 0$i; mv I,\ Robot-part-0$i* 0$i/; done
for i in `seq 0 9` ; do cp *jpg 0$i/; cd 0$i; dotracks.sh 'Isaac Asimov' 'I, Robot'; cd ..; done




rm *odm
rm *marker
