for i in *; do ffmpeg -i "$i" -vf "transpose=2" re"$i"; mv re"$i" "$i"; done
