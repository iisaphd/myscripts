for j in `seq 1 9`
do
cd 0$j
./a.sh
find . -size +10M -exec mv {} ../../../../4\ -\ done/ \;
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
dotracks.sh "VE Schwab" "A Gathering of Shadows"
cp ../*jpg ./
cd ..
done

cd 10
./a.sh
find . -size +10M -exec mv {} ../../../../4\ -\ done/ \;
for i in *mp3; do mp3splt -t 5.0 "$i"; rm "$i"; done
dotracks.sh "VE Schwab" "A Gathering of Shadows"
cp ../*jpg ./
cd ..
