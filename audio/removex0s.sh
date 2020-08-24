rename 's/0(.*)/$1/' * && cd .. && find . -iname 0[0-9][0-9]-[0-9][0-9]_* | sort > todo.txt && head -10 todo.txt
