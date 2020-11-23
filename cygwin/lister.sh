#script to remove mp3 for existing flac files
j=`pwd`
find . -iname "*" -type d > dirlist.txt && cat dirlist.txt | 
{ 
while read i
do cd "$i" 

echo Im in $i.
	find . -iname "*" -type f |
	{
	while read k
	do
	echo $k is the file
	done
	}
cd "$j"
done 
}



