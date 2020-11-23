ffmpeg -y -ss 0:00:00 -t 0:57:22 -i SixEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixEasyPieces-Chapter-1.mp3
ffmpeg -y -ss 0:57:22 -t 0:51:52 -i SixEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixEasyPieces-Chapter-2.mp3
ffmpeg -y -ss 1:49:14 -t 0:52:37 -i SixEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixEasyPieces-Chapter-3.mp3
ffmpeg -y -ss 2:41:51 -t 0:53:09 -i SixEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixEasyPieces-Chapter-4.mp3
ffmpeg -y -ss 3:35:00 -t 0:51:36 -i SixEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixEasyPieces-Chapter-5.mp3
ffmpeg -y -ss 4:26:36 -t 0:53:24 -i SixEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixEasyPieces-Chapter-6.mp3
mv SixEasyPieces.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 6` ; do mkdir $i; mv SixEasyPieces-Chapter-$i* $i/; done
for i in `seq 1 6` ; do cd $i; dotracks.sh 'Science' 'SixEasyPieces'; cd ..; done
