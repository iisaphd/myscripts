ffmpeg -y -ss 0:00:00 -t 1:11:37 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-01.mp3
ffmpeg -y -ss 1:11:37 -t 1:08:52 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-02.mp3
ffmpeg -y -ss 2:20:29 -t 1:15:43 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-03.mp3
ffmpeg -y -ss 3:36:12 -t 1:12:02 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-04.mp3
ffmpeg -y -ss 4:48:14 -t 1:04:19 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-05.mp3
ffmpeg -y -ss 5:52:33 -t 1:13:29 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-06.mp3
ffmpeg -y -ss 7:06:02 -t 1:09:14 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-07.mp3
ffmpeg -y -ss 8:15:16 -t 1:09:48 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-08.mp3
ffmpeg -y -ss 9:25:04 -t 1:11:18 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-09.mp3
ffmpeg -y -ss 10:36:22 -t 1:07:40 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-10.mp3
ffmpeg -y -ss 11:44:02 -t 1:09:19 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-11.mp3
ffmpeg -y -ss 12:53:21 -t 1:06:15 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-12.mp3
ffmpeg -y -ss 13:59:36 -t 1:15:31 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-13.mp3
ffmpeg -y -ss 15:15:07 -t 1:12:09 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-14.mp3
ffmpeg -y -ss 16:27:16 -t 0:59:28 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-15.mp3
ffmpeg -y -ss 17:26:44 -t 1:12:53 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-16.mp3
ffmpeg -y -ss 18:39:37 -t 1:09:49 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-17.mp3
ffmpeg -y -ss 19:49:26 -t 1:11:21 -i DumaKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DumaKey-Chapter-18.mp3
mv DumaKey.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv DumaKey-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Stephen King' 'DumaKey'; cd ..; done
for i in `seq 10 18` ; do mkdir $i; mv DumaKey-Chapter-$i* $i/; done
for i in `seq 10 18` ; do cd $i; dotracks.sh 'Stephen King' 'DumaKey'; cd ..; done
