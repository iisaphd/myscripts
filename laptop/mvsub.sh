for i in `seq 0 $1`
do
	mkdir $i
	mv "$2$i"*mp3 $i
	cd $i
	counter=1
	for file in *.mp3
	do
	  #get the title via mp3info and rename the file to the title
	  id3 -T $counter "$file"
	  counter=$((counter+1))
	done
	cd ..
done
