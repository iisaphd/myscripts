ffmpeg -y -ss 0:00:00 -t 0:12:27 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-00.mp3
ffmpeg -y -ss 0:12:27 -t 0:51:58 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-01.mp3
ffmpeg -y -ss 1:04:25 -t 0:13:28 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-02.mp3
ffmpeg -y -ss 1:17:53 -t 0:46:11 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-03.mp3
ffmpeg -y -ss 2:04:04 -t 1:30:46 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-04.mp3
ffmpeg -y -ss 3:34:50 -t 1:12:04 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-05.mp3
ffmpeg -y -ss 4:46:54 -t 1:10:30 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-06.mp3
ffmpeg -y -ss 5:57:24 -t 1:17:46 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-07.mp3
ffmpeg -y -ss 7:15:10 -t 0:37:33 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-08.mp3
ffmpeg -y -ss 7:52:43 -t 1:00:29 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-09.mp3
ffmpeg -y -ss 8:53:12 -t 0:00:32 -i AUsersGuidetotheUniverse.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  AUsersGuidetotheUniverse-Chapter-10.mp3
mv AUsersGuidetotheUniverse.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv AUsersGuidetotheUniverse-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Science' 'AUsersGuidetotheUniverse'; cd ..; done
for i in `seq 10 10` ; do mkdir $i; mv AUsersGuidetotheUniverse-Chapter-$i* $i/; done
for i in `seq 10 10` ; do cd $i; dotracks.sh 'Science' 'AUsersGuidetotheUniverse'; cd ..; done
