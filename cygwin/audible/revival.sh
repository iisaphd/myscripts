ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-01.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-05.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-06.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part07.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-07.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part08.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-08.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part09.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-09.mp3"
ffmpeg -y -ss 1:18:00 -t 0:00:00 -i "Revival-Part10.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-10.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part11.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-11.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "Revival-Part12.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-12.mp3"
ffmpeg -y -ss 0:00:00 -t 0:32:49 -i "Revival-Part13.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-13.mp3"
ffmpeg -y -ss 0:32:49 -t 0:45:11 -i "Revival-Part13.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "Revival-chapter-14.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 1 9` ; do mkdir 0$i; mv Revival-chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cp *jpg 0$i/; cd 0$i; dotracks.sh 'Stephen King' 'Revival'; cd ..; done
for i in `seq 10 14` ; do mkdir $i; mv Revival-chapter-$i* $i/; done
for i in `seq 10 14` ; do cp *jpg $i/; cd $i; dotracks.sh 'Stephen King' 'Revival'; cd ..; done


rm *odm
rm *marker
