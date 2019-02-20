#!/bin/bash
# use reg 6+3 + MMDDYY
pushd /cygdrive/d/temp/
# encrypt ebooks change in the past few days
# arguments:
# 1: days in past to search for
# 2: password to encrypt files
#
# filename will be $(date +%F).tar
# encrypted file will be $(date +%F).tar.e
find /cygdrive/d/calibre/ -type f -ctime -$1 -print0 | tar -cvf $(date +%F).tar --null -T -
openssl enc -aes-256-cbc -in $(date +%F).tar -out $(date +%F).tar.e -pass pass:$2
rm $(date +%F).tar
cp $(date +%F).tar.e /cygdrive/d/Amazon\ Drive/tarballs
popd
