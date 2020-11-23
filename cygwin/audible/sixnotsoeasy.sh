ffmpeg -y -ss 0:00:00 -t 0:52:24 -i SixNotSoEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixNotSoEasyPieces-Chapter-1.mp3
ffmpeg -y -ss 0:52:24 -t 0:53:22 -i SixNotSoEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixNotSoEasyPieces-Chapter-2.mp3
ffmpeg -y -ss 1:45:46 -t 0:49:48 -i SixNotSoEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixNotSoEasyPieces-Chapter-3.mp3
ffmpeg -y -ss 2:35:34 -t 0:54:58 -i SixNotSoEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixNotSoEasyPieces-Chapter-4.mp3
ffmpeg -y -ss 3:30:32 -t 0:51:22 -i SixNotSoEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixNotSoEasyPieces-Chapter-5.mp3
ffmpeg -y -ss 4:21:54 -t 1:02:59 -i SixNotSoEasyPieces.mp3 -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3  SixNotSoEasyPieces-Chapter-6.mp3
mv SixNotSoEasyPieces.mp3 /cygdrive/d/
for i in *mp3; do mp3splt -t 5.0 $i; rm $i; done
for i in `seq 1 6` ; do mkdir $i; mv SixNotSoEasyPieces-Chapter-$i* $i/; done
for i in `seq 1 6` ; do cd $i; dotracks.sh 'Science' 'SixNotSoEasyPieces'; cd ..; done
