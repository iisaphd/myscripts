ffmpeg -y -ss 0:00:00 -t 0:26:40 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-1.mp3
ffmpeg -y -ss 0:26:40 -t 0:31:40 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-2.mp3
ffmpeg -y -ss 0:58:20 -t 0:26:24 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-3.mp3
ffmpeg -y -ss 1:24:44 -t 0:36:49 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-4.mp3
ffmpeg -y -ss 2:01:33 -t 0:35:29 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-5.mp3
ffmpeg -y -ss 2:37:02 -t 0:43:46 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-6.mp3
ffmpeg -y -ss 3:20:48 -t 0:21:37 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-7.mp3
ffmpeg -y -ss 3:42:25 -t 0:49:52 -i Cosmology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Cosmology-Chapter-8.mp3
mv Cosmology.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 0` ; do mkdir $i; mv Cosmology-Chapter-$i* $i/; done
for i in `seq 0 0` ; do cd $i; dotracks.sh 'Science' 'Cosmology'; cd ..; done
