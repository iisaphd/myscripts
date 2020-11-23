#!/bin/bash
if [ -z $1 ]; then
    echo "No password provided"
    exit 2
fi 
for i in *.flv *.mp4 #etc..
do
  # Encrypt the file
  openssl enc -aes-256-cbc -in "$i" -out "$i.e" -pass pass:$1
  # Get a random string
  rand=`tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1`
  # Save the mapping 
  echo -e "$i.e" ' \t' $rand ' \t' $1 >> obfuscations.txt
  # rename the file
  mv "$i.e" "$rand"
  # Remove the original
  rm "$i"
done




