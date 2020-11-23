ffmpeg -y -ss 0:00:00 -t 0:02:54 -i "The Wind Through the Keyhole-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-00.mp3"
ffmpeg -y -ss 0:02:54 -t 0:05:23 -i "The Wind Through the Keyhole-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-01.mp3"
ffmpeg -y -ss 0:08:17 -t 1:09:43 -i "The Wind Through the Keyhole-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-03a.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-03b.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-04a.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-04b.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-04c.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-04d.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-04e.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Wind Through the Keyhole-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 0:07:54 -i "The Wind Through the Keyhole-Part12.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-06.mp3"
ffmpeg -y -ss 0:07:54 -t 1:10:06 -i "The Wind Through the Keyhole-Part12.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Wind Through the Keyhole-chapter-07.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv The\ Wind\ Through\ the\ Keyhole-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'Stephen King' 'The Wind Through the Keyhole'; cd ..; done




rm *odm
rm *marker
