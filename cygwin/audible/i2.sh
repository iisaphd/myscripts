ffmpeg -y -ss 5:57:39 -t 1:07:32 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-19.mp3
ffmpeg -y -ss 7:05:11 -t 0:44:48 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-20.mp3
ffmpeg -y -ss 7:49:59 -t 0:08:33 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-21.mp3
ffmpeg -y -ss 7:58:32 -t 0:21:29 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-22.mp3
ffmpeg -y -ss 8:20:01 -t 0:04:07 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-23.mp3
ffmpeg -y -ss 8:24:08 -t 0:04:59 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-24.mp3
ffmpeg -y -ss 8:29:07 -t 0:02:32 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-25.mp3
ffmpeg -y -ss 8:31:39 -t 0:53:13 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-26.mp3
ffmpeg -y -ss 9:24:52 -t 0:07:42 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-27.mp3
ffmpeg -y -ss 9:32:34 -t 0:11:48 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-28.mp3
ffmpeg -y -ss 9:44:22 -t 0:01:08 -i IllBeGoneInTheDark.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  IllBeGoneInTheDark-Chapter-29.mp3
mv IllBeGoneInTheDark.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 0 9` ; do mkdir 0$i; mv IllBeGoneInTheDark-Chapter-0$i* 0$i/; done
for i in `seq 0 9` ; do cd 0$i; dotracks.sh 'Michelle McNamara' 'IllBeGoneInTheDark'; cd ..; done
for i in `seq 10 29` ; do mkdir $i; mv IllBeGoneInTheDark-Chapter-$i* $i/; done
for i in `seq 10 29` ; do cd $i; dotracks.sh 'Michelle McNamara' 'IllBeGoneInTheDark'; cd ..; done
