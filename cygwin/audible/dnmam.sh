ffmpeg -y -ss 0:00:00 -t 1:15:14 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-01.mp3
ffmpeg -y -ss 1:15:14 -t 1:09:50 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-02.mp3
ffmpeg -y -ss 2:25:04 -t 1:09:59 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-03.mp3
ffmpeg -y -ss 3:35:03 -t 1:15:54 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-04.mp3
ffmpeg -y -ss 4:50:57 -t 1:15:22 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-05.mp3
ffmpeg -y -ss 6:06:19 -t 1:13:36 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-06.mp3
ffmpeg -y -ss 7:19:55 -t 1:14:15 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-07.mp3
ffmpeg -y -ss 8:34:10 -t 1:12:54 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-08.mp3
ffmpeg -y -ss 9:47:04 -t 1:15:19 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-09.mp3
ffmpeg -y -ss 11:02:23 -t 1:14:35 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-10.mp3
ffmpeg -y -ss 12:16:58 -t 1:05:55 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-11.mp3
ffmpeg -y -ss 13:22:53 -t 1:15:54 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-12.mp3
ffmpeg -y -ss 14:38:47 -t 1:12:54 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-13.mp3
ffmpeg -y -ss 15:51:41 -t 1:07:33 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-14.mp3
ffmpeg -y -ss 16:59:14 -t 1:13:14 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-15.mp3
ffmpeg -y -ss 18:12:28 -t 1:11:21 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-16.mp3
ffmpeg -y -ss 19:23:49 -t 0:56:16 -i DontKnowMuchAboutMythology.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  DontKnowMuchAboutMythology-Chapter-17.mp3
mv DontKnowMuchAboutMythology.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv DontKnowMuchAboutMythology-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Kenneth C. Davis' 'DontKnowMuchAboutMythology'; cd ..; done
for i in `seq 10 17` ; do mkdir $i; mv DontKnowMuchAboutMythology-Chapter-$i* $i/; done
for i in `seq 10 17` ; do cd $i; dotracks.sh 'Kenneth C. Davis' 'DontKnowMuchAboutMythology'; cd ..; done
