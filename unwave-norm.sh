for i in *.wav; do ffmpeg -i "$i" -af atempo=1.25 "${i%.wav}.mp3"; mp3splt -t 5.0 "${i%.wav}.mp3"; done
