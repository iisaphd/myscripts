#!/bin/bash
for i in *mp3; do ffmpeg -i "$i" -filter:a "atempo=1.5" -vn out.mp3; mv out.mp3 "$i"; done
