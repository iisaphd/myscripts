find . -type d -printf "%T@ %Tc %p\n" | sort -n | grep -v txt | grep -v jpg | grep -v jpeg | grep -v mp3 | grep -v flac
