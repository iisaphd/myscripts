ffmpeg -y -ss 0:00:00 -t 1:06:21 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-1.mp3
ffmpeg -y -ss 1:06:21 -t 1:37:54 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-2.mp3
ffmpeg -y -ss 2:44:15 -t 1:14:18 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-3.mp3
ffmpeg -y -ss 3:58:34 -t 1:03:58 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-4.mp3
ffmpeg -y -ss 5:02:32 -t 1:01:28 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-5.mp3
ffmpeg -y -ss 6:04:01 -t 1:01:43 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-6.mp3
ffmpeg -y -ss 7:05:44 -t 1:08:01 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-7.mp3
ffmpeg -y -ss 8:13:46 -t 1:14:39 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-8.mp3
ffmpeg -y -ss 9:28:25 -t 0:54:31 -i PatternRecognition.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  PatternRecognition-chapter-9.mp3
mv PatternRecognition.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir $i; mv PatternRecognition-chapter-$i* $i/; done
for i in `seq 1 9` ; do cd $i; dotracks.sh 'William Gibson' 'PatternRecognition'; cd ..; done
