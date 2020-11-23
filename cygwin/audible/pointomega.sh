ffmpeg -y -ss 0:00:00 -t 0:51:17 -i PointOmega.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PointOmega-Chapter-1.mp3
ffmpeg -y -ss 0:51:17 -t 0:34:03 -i PointOmega.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PointOmega-Chapter-2.mp3
ffmpeg -y -ss 1:25:20 -t 0:25:34 -i PointOmega.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PointOmega-Chapter-3.mp3
ffmpeg -y -ss 1:50:54 -t 0:56:24 -i PointOmega.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PointOmega-Chapter-4.mp3
mv PointOmega.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 4` ; do mkdir $i; mv $i* $i/; done
for i in `seq 1 4` ; do cd $i; dotracks.sh 'Don Delillo' 'PointOmega'; cd ..; done
