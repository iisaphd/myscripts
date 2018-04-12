export t=1; for i in *.mp3; do y="${i%.mp3}"; echo y = $y; id3v2 -T $t/69  $i; export t=$(($t+1)); done


