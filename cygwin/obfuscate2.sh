#!/bin/bash
# use reg 6+3 + MMDDYY
 
for i in *.tar.e
do
  # Encrypt the file
  #openssl enc -aes-256-cbc -in "$i" -out "$i.e" -pass pass:$1
  # Get a random string
  rand=`tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1`
  # Save the mapping 
  echo -e "$i" ' \t' $rand ' \t' $1 >> obfuscations.txt
  # rename the file
  mv "$i" "$rand"
  # Put the file on amazon
  7za a -v8m -mx0 "$rand.7z" "$rand"
  rm "$rand"
  mv "$rand.7z*" /cygdrive/d/Amazon\ Drive/pmet/
  # Remove the original
  rm "$i"
done




