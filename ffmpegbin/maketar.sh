#!/bin/bash

cd /cygdrive/d/tarballs/

for i in {A..Z}
do
  echo "Getting the new files..."
  tar -cf /cygdrive/d/tarballs/$i.tar /cygdrive/d/calibre/$i*
done
