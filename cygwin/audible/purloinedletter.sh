ffmpeg -y -ss 0:25:34 -t 0:04:18 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-1.mp3
ffmpeg -y -ss 0:29:52 -t 0:04:12 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-2.mp3
ffmpeg -y -ss 0:34:04 -t 0:08:08 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-3.mp3
ffmpeg -y -ss 0:42:12 -t 0:03:48 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-4.mp3
ffmpeg -y -ss 0:46:00 -t 0:07:19 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-5.mp3
ffmpeg -y -ss 0:53:19 -t 0:08:15 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-6.mp3
ffmpeg -y -ss 1:01:34 -t 0:07:45 -i "The Dupin Stories-Part04.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  The\ Purloined\ Letter-chapter-7.mp3
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 0` ; do mkdir $i; mv The\ Purloined\ Letter-chapter-$i* $i/;  done
for i in `seq 0 0` ; do cp *jpg $i/; cd $i; dotracks.sh 'Edgar Allan Poe' 'The Mystery of Marie Roget'; cd ..; done




rm *odm
rm *marker

