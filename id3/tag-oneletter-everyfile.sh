#!/bin/bash
find $1* -iname "*.mp3" -print0 | while read -d $'\0' file; do id3v2 -t "${file%.mp3}" "$file"; done
