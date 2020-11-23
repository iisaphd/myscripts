ffmpeg -y -ss 0:00:00 -t 0:09:04 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-01.mp3
ffmpeg -y -ss 0:09:04 -t 0:05:59 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-02.mp3
ffmpeg -y -ss 0:15:03 -t 0:06:51 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-03.mp3
ffmpeg -y -ss 0:21:54 -t 0:03:48 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-04.mp3
ffmpeg -y -ss 0:25:42 -t 0:07:03 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-05.mp3
ffmpeg -y -ss 0:32:45 -t 0:09:07 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-06.mp3
ffmpeg -y -ss 0:41:52 -t 0:04:21 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-07.mp3
ffmpeg -y -ss 0:46:13 -t 0:05:34 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-08.mp3
ffmpeg -y -ss 0:51:47 -t 0:07:11 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-09.mp3
ffmpeg -y -ss 0:58:58 -t 0:03:44 -i "The Dupin Stories-Part01.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-10.mp3
ffmpeg -y -ss 0:00:00 -t 0:06:04 -i "The Dupin Stories-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-11.mp3
ffmpeg -y -ss 0:06:04 -t 0:08:30 -i "The Dupin Stories-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-12.mp3
ffmpeg -y -ss 0:14:34 -t 0:04:24 -i "The Dupin Stories-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-13.mp3
ffmpeg -y -ss 0:18:58 -t 0:08:13 -i "The Dupin Stories-Part02.mp3" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Murders\ in\ the\ Rue\ Morgue-chapter-14.mp3
rm *-Part*
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
for i in `seq 0 1` ; do mkdir $i; mv Murders\ in\ the\ Rue\ Morgue-chapter-$i* $i/;  done
for i in `seq 0 1` ; do cp *jpg $i/; cd $i; dotracks.sh 'Edgar Allan Poe' 'Murders in the Rue Morgue'; cd ..; done




rm *odm
rm *marker
