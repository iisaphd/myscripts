#!/bin/bash
# use fw
if [ -z $1 ]; then
    echo "No password provided"
    exit 2
fi 

cd /cygdrive/e/Games/p/j/

tar -cvf kfav.tar named/2-other/.k/fav
7za a -v8m -mx0 kfav.tar.7z kfav.tar
rm *.tar
tar -cvf kn.tar named/2-other/.k/j/n
7za a -v8m -mx0 kn.tar.7z kn.tar
rm *.tar
tar -cvf knn.tar named/2-other/.k/j/nn
7za a -v8m -mx0 knn.tar.7z knn.tar
rm *.tar
tar -cvf ko.tar named/2-other/.k/j/o
7za a -v8m -mx0 ko.tar.7z ko.tar
rm *.tar
tar -cvf kold.tar named/2-other/.k/j/old/
7za a -v8m -mx0 kold.tar.7z kold.tar
rm *.tar
# named
tar -cvf n1-am.tar named/1-*
7za a -v8m -mx0 n1-am.tar.7z n1-am.tar
rm *.tar
tar --exclude='named/2-other/.k' -cvf n2-other.tar named/2-other
7za a -v8m -mx0 n2-other.tar.7z n2-other.tar
rm *.tar
tar -cvf n3-mod.tar named/3-mod*
7za a -v8m -mx0 n3-mod.tar.7z n3-mod.tar
rm *.tar
tar -cvf n4-ps.tar named/4-*
7za a -v8m -mx0 n4-ps.tar.7z n4-ps.tar
rm *.tar
tar -cvf n5-user.tar named/5-user
7za a -v8m -mx0 n5-user.tar.7z n5-user.tar
rm *.tar
# root
tar -cvf nn.tar nn/*
7za a -v8m -mx0 nn.tar.7z nn.tar
rm *.tar
tar -cvf hc.tar hc/*
7za a -v8m -mx0 hc.tar.7z hc.tar
rm *.tar
tar -cvf 0-f.tar 0-f/*
7za a -v8m -mx0 0-f.tar.7z 0-f.tar
rm *.tar
tar -cvf back.tar back/*
7za a -v8m -mx0 back.tar.7z back.tar
rm *.tar
tar -cvf front.tar nn/*
7za a -v8m -mx0 front.tar.7z front.tar
rm *.tar
tar --exclude='/named' --exclude='/nn' --exclude='/hc' --exclude='/0-f' --exclude='/back' --exclude='/front' -cvf root.tar bd* bea* new part* vin* vo*
7za a -v8m -mx0 root.tar.7z root.tar
rm *.tar

#for i in *; do openssl enc -aes-256-cbc -in $i -out $i.e -pass pass:$1; done

#mv *.e /cygdrive/d/uploads/
#cd /cygdrive/d/uploads/


