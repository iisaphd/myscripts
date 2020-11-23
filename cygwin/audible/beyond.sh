ffmpeg -y -ss 0:00:00 -t 1:13:28 -i BeyondtheBodyFarm.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BeyondtheBodyFarm-Chapter-1.mp3
ffmpeg -y -ss 1:13:28 -t 1:13:32 -i BeyondtheBodyFarm.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BeyondtheBodyFarm-Chapter-2.mp3
ffmpeg -y -ss 2:27:00 -t 1:18:34 -i BeyondtheBodyFarm.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BeyondtheBodyFarm-Chapter-3.mp3
ffmpeg -y -ss 3:45:34 -t 1:13:10 -i BeyondtheBodyFarm.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BeyondtheBodyFarm-Chapter-4.mp3
ffmpeg -y -ss 4:58:44 -t 1:18:21 -i BeyondtheBodyFarm.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  BeyondtheBodyFarm-Chapter-5.mp3
mv BeyondtheBodyFarm.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 5` ; do mkdir $i; mv BeyondtheBodyFarm-Chapter-$i* $i/; done
for i in `seq 1 5` ; do cd $i; dotracks.sh 'Science' 'BeyondtheBodyFarm'; cd ..; done
