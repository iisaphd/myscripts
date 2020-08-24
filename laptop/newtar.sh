#!/bin/bash
# use reg 6+3 + MMDDYY
if [ -z $1 ]; then
    echo "No password provided"
    exit 2
fi 

cd /cygdrive/d/tarballs/

echo "Synching the cloud drive"

for i in {A..Z}
do
  echo "Getting the new files..."
  tar -cf /cygdrive/d/tarballs/new$i.tar /cygdrive/d/calibre/$i*
  # compare the new and the old
  echo "Comparing new$i to $i..."
  new_sha=$( sha256sum "new$i.tar" | awk '{print $1}')
  old_sha=$( sha256sum "$i.tar" | awk '{print $1}')
  if [ "x$new_sha" = "x$old_sha" ]
  then
    echo "file $i is the same"
    rm new$i.tar
  else
    echo "file $i is different"
    mv new$i.tar $i.tar
    echo "Encrypting new file..."
    openssl aes-256-cbc -in $i.tar -out $i.tar.e -pass pass:$1
    7za a -v8m -mx0 "$i.7z" "$i.tar.e"
    rm "$i.tar.e"
    mv $i.7z* /cygdrive/d/Amazon\ Drive/tarballs/
    echo "done"
  fi
done
