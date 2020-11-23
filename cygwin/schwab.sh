for j in `seq 10 15`
do
cd $j
./a.sh
find . -size +10M -exec mv {} ../../../../4\ -\ done/ \;
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
dotracks.sh "VE Schwab" "A Conjuring of Light"
cp ../*jpg ./
cd ..
done

