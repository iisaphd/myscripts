#!/bin/bash
if [ -z $1 ]; then
    echo "No password provided"
    exit 2
fi 

cd /cygdrive/d/tarballs/

echo "Synching the cloud drive"

for i in {A..Z}
do
  echo "Getting the new files..."
  tar -cf /cygdrive/d/tarballs/$i.tar /cygdrive/d/calibre/$i*
  echo "Encrypting new file..."
  openssl aes-256-cbc -in $i.tar -out $i.tar.e -pass pass:$1
  7za a -v8m -mx0 "$i.7z" "$i.tar.e"
  rm "$i.tar.e"
  mv $i.7z* /cygdrive/d/Amazon\ Drive/tarballs/
  echo "done"
done
