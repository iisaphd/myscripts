ffmpeg -y -ss 0:00:00 -t 1:08:58 -i "As I Lay Dying-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-01.mp3"
ffmpeg -y -ss 0:00:00 -t 0:18:34 -i "As I Lay Dying-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-02.mp3"
ffmpeg -y -ss 0:18:34 -t 0:55:25 -i "As I Lay Dying-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 0:09:52 -i "As I Lay Dying-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-3.5.mp3"
ffmpeg -y -ss 0:09:52 -t 0:46:02 -i "As I Lay Dying-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-4.mp3"
ffmpeg -y -ss 0:55:54 -t 0:15:09 -i "As I Lay Dying-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 0:38:30 -i "As I Lay Dying-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-5.5.mp3"
ffmpeg -y -ss 0:38:30 -t 0:36:35 -i "As I Lay Dying-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-6.mp3"
ffmpeg -y -ss 0:00:00 -t 0:10:52 -i "As I Lay Dying-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-6.5.mp3"
ffmpeg -y -ss 0:10:52 -t 0:55:38 -i "As I Lay Dying-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-7.mp3"
ffmpeg -y -ss 0:00:00 -t 0:58:55 -i "As I Lay Dying-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:58:39 -i "As I Lay Dying-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-09.mp3"
ffmpeg -y -ss 0:00:00 -t 1:02:30 -i "As I Lay Dying-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-10.mp3"
ffmpeg -y -ss 0:00:00 -t 0:27:58 -i "As I Lay Dying-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-11.mp3"
ffmpeg -y -ss 0:27:58 -t 0:47:32 -i "As I Lay Dying-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-12.mp3"
ffmpeg -y -ss 0:00:00 -t 0:03:13 -i "As I Lay Dying-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-12.5.mp3"
ffmpeg -y -ss 0:03:13 -t 1:03:09 -i "As I Lay Dying-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-13.mp3"
ffmpeg -y -ss 1:06:22 -t 0:04:46 -i "As I Lay Dying-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "As I Lay Dying-chapter-14.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv As\ I\ Lay\ Dying-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'William Faulkner' 'As I Lay Dying'; cd ..; done




rm *odm
rm *marker
