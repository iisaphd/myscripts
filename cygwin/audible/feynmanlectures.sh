ffmpeg -y -ss 0:00:00 -t 0:51:57 -i FeynmanLecturesonPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FeynmanLecturesonPhysics-Chapter-1.mp3
ffmpeg -y -ss 0:51:57 -t 0:53:28 -i FeynmanLecturesonPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FeynmanLecturesonPhysics-Chapter-2.mp3
ffmpeg -y -ss 1:45:25 -t 0:56:58 -i FeynmanLecturesonPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FeynmanLecturesonPhysics-Chapter-3.mp3
ffmpeg -y -ss 2:42:23 -t 0:58:41 -i FeynmanLecturesonPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FeynmanLecturesonPhysics-Chapter-4.mp3
ffmpeg -y -ss 3:41:04 -t 0:55:51 -i FeynmanLecturesonPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FeynmanLecturesonPhysics-Chapter-5.mp3
ffmpeg -y -ss 4:36:55 -t 0:54:25 -i FeynmanLecturesonPhysics.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  FeynmanLecturesonPhysics-Chapter-6.mp3
mv FeynmanLecturesonPhysics.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 6` ; do mkdir $i; mv FeynmanLecturesonPhysics-Chapter-$i* $i/; done
for i in `seq 1 6` ; do cd $i; dotracks.sh 'Science' 'FeynmanLecturesonPhysics'; cd ..; done
