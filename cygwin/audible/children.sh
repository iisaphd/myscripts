ffmpeg -y -ss 0:00:00 -t 1:08:30 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-1.mp3
ffmpeg -y -ss 1:08:30 -t 1:02:48 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-2.mp3
ffmpeg -y -ss 2:11:18 -t 1:13:09 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-3.mp3
ffmpeg -y -ss 3:24:27 -t 1:13:28 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-4.mp3
ffmpeg -y -ss 4:37:55 -t 1:07:43 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-5.mp3
ffmpeg -y -ss 5:45:38 -t 1:06:20 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-6.mp3
ffmpeg -y -ss 6:51:58 -t 0:59:25 -i ChildrenofHurin.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  ChildrenofHurin-Chapter-7.mp3
mv ChildrenofHurin.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 7` ; do mkdir $i; mv ChildrenofHurin-Chapter-$i* $i/; done
for i in `seq 1 7` ; do cd $i; dotracks.sh 'JRR Tolkien' 'ChildrenofHurin'; cd ..; done
