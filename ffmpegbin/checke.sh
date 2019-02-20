cd "$1"
cd "$2"
echo `pwd`
for i in {100..1}
do
  if test -n "$(shopt -s nullglob; echo *Part$i*)"
    then mkdir "CD $i"
    mv *Part$i* "CD $i"
  fi
done

