ffmpeg -y -ss 0:00:00 -t 0:48:57 -i "Absalom, Absalom!-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-01.mp3"
ffmpeg -y -ss 0:48:57 -t 0:26:15 -i "Absalom, Absalom!-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 0:28:22 -i "Absalom, Absalom!-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-02a.mp3"
ffmpeg -y -ss 0:28:22 -t 0:46:51 -i "Absalom, Absalom!-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 0:14:19 -i "Absalom, Absalom!-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-03a.mp3"
ffmpeg -y -ss 0:14:19 -t 1:01:54 -i "Absalom, Absalom!-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 0:35:24 -i "Absalom, Absalom!-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-04a.mp3"
ffmpeg -y -ss 0:35:24 -t 0:40:50 -i "Absalom, Absalom!-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 1:15:38 -i "Absalom, Absalom!-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-05a.mp3"
ffmpeg -y -ss 0:00:00 -t 0:47:36 -i "Absalom, Absalom!-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-05b.mp3"
ffmpeg -y -ss 0:47:36 -t 0:27:57 -i "Absalom, Absalom!-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-06.mp3"
ffmpeg -y -ss 0:00:00 -t 1:12:46 -i "Absalom, Absalom!-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-06a.mp3"
ffmpeg -y -ss 1:12:46 -t 0:02:09 -i "Absalom, Absalom!-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-07.mp3"
ffmpeg -y -ss 0:00:00 -t 1:00:31 -i "Absalom, Absalom!-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-07a.mp3"
ffmpeg -y -ss 1:00:31 -t 0:14:58 -i "Absalom, Absalom!-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 0:45:34 -i "Absalom, Absalom!-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-08a.mp3"
ffmpeg -y -ss 0:45:34 -t 0:30:27 -i "Absalom, Absalom!-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-09.mp3"
ffmpeg -y -ss 0:00:00 -t 1:14:45 -i "Absalom, Absalom!-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Absalom, Absalom!-chapter-10.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv Absalom,\ Absalom\!-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'William Faulkner' 'Absalom, Absalom!'; cd ..; done




rm *odm
rm *marker
