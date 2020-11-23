ffmpeg -y -ss 0:00:00 -t 1:05:52 -i SkeletonKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SkeletonKey-chapter-1.mp3
ffmpeg -y -ss 1:05:52 -t 1:12:08 -i SkeletonKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SkeletonKey-chapter-2.mp3
ffmpeg -y -ss 2:18:00 -t 1:10:19 -i SkeletonKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SkeletonKey-chapter-3.mp3
ffmpeg -y -ss 3:28:19 -t 1:07:50 -i SkeletonKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SkeletonKey-chapter-4.mp3
ffmpeg -y -ss 4:36:09 -t 0:45:16 -i SkeletonKey.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SkeletonKey-chapter-5.mp3
mv SkeletonKey.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 5` ; do mkdir $i; mv SkeletonKey-chapter-$i* $i/; done
for i in `seq 1 5` ; do cd $i; dotracks.sh 'Stephen King' 'SkeletonKey'; cd ..; done
