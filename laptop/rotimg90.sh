for i in *; do ffmpeg -i "$i" -vf "transpose=1" re"$i"; mv re"$i" "$i"; done
