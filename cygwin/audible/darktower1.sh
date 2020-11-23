ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Gunslinger-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-1.mp3"
ffmpeg -y -ss 0:00:00 -t 0:57:12 -i "The Gunslinger-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-01a.mp3"
ffmpeg -y -ss 0:57:12 -t 0:20:48 -i "The Gunslinger-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-02.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Gunslinger-Part03.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-02a.mp3"
ffmpeg -y -ss 0:00:00 -t 0:08:58 -i "The Gunslinger-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-02b.mp3"
ffmpeg -y -ss 0:08:58 -t 1:09:02 -i "The Gunslinger-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-03.mp3"
ffmpeg -y -ss 0:00:00 -t 1:18:00 -i "The Gunslinger-Part05.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-04.mp3"
ffmpeg -y -ss 0:00:00 -t 0:25:21 -i "The Gunslinger-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-04a.mp3"
ffmpeg -y -ss 0:25:21 -t 0:52:39 -i "The Gunslinger-Part06.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  "The Gunslinger-chapter-05.mp3"
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
dotracks.sh 'Stephen King' 'The Gunslinger'





rm *odm
rm *marker
