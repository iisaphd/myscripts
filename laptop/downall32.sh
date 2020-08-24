for i in *mp3; do ffmpeg -i "$i" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 re"$i"; mv re"$i" "$i"; done
