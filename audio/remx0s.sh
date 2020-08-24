rename 's/0(.*)-0(..*)/$1-$2/' * && cd .. && find . -iname 0[0-9][0-9]-0[0-9][0-9]_* | sort > todo.txt && head -10 todo.txt
