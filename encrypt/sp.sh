tar -cvf kfav.tar named/2-other/.k/fav
openssl aes-256-cbc -in kfav.tar -out kfave -pass pass:$1
rm *.tar
tar -cvf kn.tar named/2-other/.k/j/n
openssl aes-256-cbc -in kn.tar -out kne -pass pass:$1
rm *.tar
tar -cvf knn.tar named/2-other/.k/j/nn
openssl aes-256-cbc -in knn.tar -out knne -pass pass:$1
rm *.tar
tar -cvf ko.tar named/2-other/.k/j/o
openssl aes-256-cbc -in ko.tar -out koe -pass pass:$1
rm *.tar
tar -cvf kold.tar named/2-other/.k/j/old/
openssl aes-256-cbc -in kold.tar -out kolde -pass pass:$1
rm *.tar
# named
tar -cvf n1-amateur.tar named/1-amateur
openssl aes-256-cbc -in n1-amateur.tar -out n1-ame -pass pass:$1
rm *.tar
tar --exclude='named/2-other/.k' -cvf n2-other.tar named/2-other
openssl aes-256-cbc -in  n2-other.tar -out n2-othere -pass pass:$1
rm *.tar
tar -cvf n3-models.tar named/3-models
openssl aes-256-cbc -in n3-models.tar -out n3-mode -pass pass:$1
rm *.tar
tar -cvf 4-pornstar.tar named/4-pornstar
openssl aes-256-cbc -in 4-pornstar.tar -out n4-pse -pass pass:$1
rm *.tar
tar -cvf 5-user.tar named/5-user
openssl aes-256-cbc -in 5-user.tar -out n5-usere -pass pass:$1
rm *.tar
# root
tar -cvf nn.tar nn/*
openssl aes-256-cbc -in nn.tar -out root-nne -pass pass:$1
rm *.tar
tar -cvf hc.tar hc/*
openssl aes-256-cbc -in hc.tar -out root-hce -pass pass:$1
rm *.tar
tar -cvf 0-f.tar 0-f/*
openssl aes-256-cbc -in 0-f.tar -out root-0fe -pass pass:$1
rm *.tar
tar -cvf back.tar back/*
openssl aes-256-cbc -in back.tar -out root-backe -pass pass:$1
rm *.tar
tar -cvf front.tar nn/*
openssl aes-256-cbc -in front.tar -out root-frnte -pass pass:$1
rm *.tar
tar --exclude='/named' --exclude='/nn' --exclude='/hc' --exclude='/0-f' --exclude='/back' --exclude='/front' -cvf root.tar bdsm beach new party vintag voyeur
openssl aes-256-cbc -in root.tar -out root-e -pass pass:$1
rm *.tar
mv *e /cygdrive/d/acd/Amazon\ Drive/downloads/