# Gets a book. Argument one would be something like: Del*/Under*/*
# You should be in this directory for the above: /cygdrive/d/music/audiobooks/Dellilo,\Don/Underworld/ 
rsync -av pi@pi5:/media/SED/audible/$1 ./
