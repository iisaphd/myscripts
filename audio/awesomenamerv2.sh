#get the author's name
path=`pwd`
cd ..
author="`basename ~+`"
cd "$path"
  status=$?
  if [ $status -ne 0 ]; then
    echo "Error getting into the right directory"
    exit  2
  fi

book="`basename ~+`"
echo $author is the author of $book
count=`ls *.mp3 | wc | cut -d " " -f 5`
echo `ls *.mp3 | wc `
echo does $count seem like the rignt number of files?
read answer
if [ $answer == "y" ]
then
  echo "great"
else
  count=`ls *mp3 | wc | cut -d " " -f 6`
  echo does $count seem like the right number of files?
  read answer
  if [ $answer == "y" ]
  then
    echo "great"
  else
    echo "oops"
    exit 1
  fi

fi



#rename the files
counter=1
for i in *mp3
do
  #determing padding
  if [ "$count" -gt 99 ]; then
   if [ "$counter" -lt 10 ]; then
     pad="00"
   elif [ "$counter" -lt 100 ]; then
     pad="0"
   else
     pad=""
   fi
  else
   if [ "$counter" -lt 10 ]; then
     pad="0"
   else
     pad=""
   fi
  
  fi
  mv "$i" $pad$counter"-"$count"_$i"
  counter=$((counter+1))
done


counter=1
for file in *.mp3
do
  id3v2 -t "${file%.mp3}" -T $counter -a "$author" -A "$book" "$file"
  counter=$((counter+1))
done


