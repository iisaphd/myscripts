ffmpeg -y -ss 0:00:00 -t 0:16:38 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-01.mp3
ffmpeg -y -ss 0:16:38 -t 0:05:04 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-02.mp3
ffmpeg -y -ss 0:21:42 -t 0:12:03 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-03.mp3
ffmpeg -y -ss 0:33:45 -t 0:11:54 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-04.mp3
ffmpeg -y -ss 0:45:39 -t 0:09:49 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-05.mp3
ffmpeg -y -ss 0:55:28 -t 0:09:26 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-06.mp3
ffmpeg -y -ss 1:04:54 -t 0:08:37 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-07.mp3
ffmpeg -y -ss 1:13:31 -t 0:07:01 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-08.mp3
ffmpeg -y -ss 1:20:32 -t 0:05:30 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-09.mp3
ffmpeg -y -ss 1:26:02 -t 0:13:36 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-10.mp3
ffmpeg -y -ss 1:39:38 -t 0:19:25 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-11.mp3
ffmpeg -y -ss 1:59:03 -t 0:34:02 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-12.mp3
ffmpeg -y -ss 2:33:05 -t 0:11:50 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-13.mp3
ffmpeg -y -ss 2:44:55 -t 0:19:45 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-14.mp3
ffmpeg -y -ss 3:04:40 -t 0:11:21 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-15.mp3
ffmpeg -y -ss 3:16:01 -t 0:19:48 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-16.mp3
ffmpeg -y -ss 3:35:49 -t 0:24:53 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-17.mp3
ffmpeg -y -ss 4:00:42 -t 0:03:39 -i Gilgamesh.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Gilgamesh-Book-18.mp3
mv Gilgamesh.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 1` ; do mkdir $i; mv Gilgamesh-Book-$i* $i/; done
for i in `seq 0 1` ; do cd $i; dotracks.sh 'Mythology' 'Gilgamesh'; cd ..; done
