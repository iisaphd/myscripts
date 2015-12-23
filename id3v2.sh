id3v2 -a "David Foster Wallace"  -A "Infinite Jest-Chronologically" -y 1996 *
for i in *.mp3; do y="${i%.mp3}"; echo y = $y; id3v2 -T $y/197 -t "Episode $y" $i; done
