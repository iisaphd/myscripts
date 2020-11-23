ffmpeg -y -ss 0:00:00 -t 0:14:38 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-00.mp3
ffmpeg -y -ss 0:14:38 -t 1:09:35 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-01.mp3
ffmpeg -y -ss 1:24:13 -t 0:51:23 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-02.mp3
ffmpeg -y -ss 2:15:36 -t 0:37:05 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-03.mp3
ffmpeg -y -ss 2:52:41 -t 1:00:30 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-04.mp3
ffmpeg -y -ss 3:53:11 -t 0:56:20 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-05.mp3
ffmpeg -y -ss 4:49:31 -t 1:06:04 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-06.mp3
ffmpeg -y -ss 5:55:35 -t 0:23:12 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-07.mp3
ffmpeg -y -ss 6:18:47 -t 0:52:12 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-08.mp3
ffmpeg -y -ss 7:10:59 -t 0:56:43 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-09.mp3
ffmpeg -y -ss 8:07:42 -t 0:58:12 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-10.mp3
ffmpeg -y -ss 9:05:54 -t 1:01:24 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-11.mp3
ffmpeg -y -ss 10:07:18 -t 1:03:26 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-12.mp3
ffmpeg -y -ss 11:10:44 -t 0:45:59 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-13.mp3
ffmpeg -y -ss 11:56:43 -t 1:09:57 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-14.mp3
ffmpeg -y -ss 13:06:40 -t 0:50:21 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-15.mp3
ffmpeg -y -ss 13:57:01 -t 0:24:27 -i Quantum.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  Quantum-Chapter-16.mp3
mv Quantum.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv Quantum-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'Quantum'; cd ..; done
for i in `seq 10 16` ; do mkdir $i; mv Quantum-Chapter-$i* $i/; done
for i in `seq 10 16` ; do cd $i; dotracks.sh 'Science' 'Quantum'; cd ..; done
