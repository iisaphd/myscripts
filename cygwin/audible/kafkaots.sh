ffmpeg -y -ss 0:00:00 -t 1:08:58 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-01.mp3
ffmpeg -y -ss 1:08:58 -t 1:13:40 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-02.mp3
ffmpeg -y -ss 2:22:38 -t 1:15:37 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-03.mp3
ffmpeg -y -ss 3:38:15 -t 1:18:46 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-04.mp3
ffmpeg -y -ss 4:57:01 -t 1:13:02 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-05.mp3
ffmpeg -y -ss 6:10:03 -t 1:16:28 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-06.mp3
ffmpeg -y -ss 7:26:31 -t 1:17:50 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-07.mp3
ffmpeg -y -ss 8:44:21 -t 1:17:05 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-08.mp3
ffmpeg -y -ss 10:01:26 -t 1:19:05 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-09.mp3
ffmpeg -y -ss 11:20:31 -t 1:19:27 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-10.mp3
ffmpeg -y -ss 12:39:58 -t 1:19:11 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-11.mp3
ffmpeg -y -ss 13:59:09 -t 1:16:56 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-12.mp3
ffmpeg -y -ss 15:16:05 -t 1:17:16 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-13.mp3
ffmpeg -y -ss 16:33:21 -t 1:15:32 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-14.mp3
ffmpeg -y -ss 17:48:53 -t 1:16:59 -i KafkaontheShore.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  KafkaontheShore-Chapter-15.mp3







mv KafkaontheShore.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 9` ; do mkdir 0$i; mv KafkaontheShore-Chapter-0$i* 0$i/; done
for i in `seq 1 9` ; do cd 0$i; dotracks.sh 'Haruki Murakami' 'KafkaontheShore'; cd ..; done
for i in `seq 10 15` ; do mkdir $i; mv KafkaontheShore-Chapter-$i* $i/; done
for i in `seq 10 15` ; do cd $i; dotracks.sh 'Haruki Murakami' 'KafkaontheShore'; cd ..; done
