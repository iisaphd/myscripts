#!/bin/bash
if [ -z $1 ]; then
    echo "No password provided"
    exit 2
fi 

cd /cygdrive/d/temp/

for i in *.mp4
do
  echo "Encrypting new file..."
  openssl aes-256-cbc -in "$i" -out "$i.e" -pass pass:$1
  rm "$i"
  7za a -v8m -mx0 "$i.7z" "$i.e"
  rm "$i.e"
done
