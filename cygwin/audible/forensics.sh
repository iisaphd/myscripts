ffmpeg -y -ss 0:00:00 -t 0:06:37 -i "Forensics-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-00.mp3"
ffmpeg -y -ss 0:06:37 -t 0:37:36 -i "Forensics-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-01.mp3"
ffmpeg -y -ss 0:44:13 -t 0:01:08 -i "Forensics-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 0:34:18 -i "Forensics-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-2.5.mp3"
ffmpeg -y -ss 0:34:18 -t 0:43:27 -i "Forensics-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 0:56:07 -i "Forensics-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 1:01:03 -i "Forensics-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 0:47:59 -i "Forensics-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-06.mp3"
ffmpeg -y -ss 0:00:00 -t 1:02:53 -i "Forensics-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-07.mp3"
ffmpeg -y -ss 0:00:00 -t 0:59:23 -i "Forensics-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:45:26 -i "Forensics-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-09.mp3"
ffmpeg -y -ss 0:00:00 -t 0:55:40 -i "Forensics-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-10.mp3"
ffmpeg -y -ss 0:00:00 -t 1:10:52 -i "Forensics-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-11.mp3"
ffmpeg -y -ss 0:00:00 -t 0:30:27 -i "Forensics-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-12.mp3"
ffmpeg -y -ss 0:30:27 -t 0:35:21 -i "Forensics-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-13.mp3"
ffmpeg -y -ss 1:05:48 -t 0:07:52 -i "Forensics-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Forensics-chapter-14.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv Forensics-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'Val McDermid' 'Forensics'; cd ..; done




rm *odm
rm *marker
