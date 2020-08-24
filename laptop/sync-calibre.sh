pushd /cygdrive/d/calibre/
find . -iname "*original_*" -delete
echo pi5
rsync -av --delete-after --progress /cygdrive/d/calibre/ pi@pi5:/media/SED/calibre
echo pi4
rsync -av --delete-after --progress /cygdrive/d/calibre/ pi@pi4:/media/SED/calibre
echo pi2
rsync -av --delete-after --progress /cygdrive/d/calibre/ osmc@pi2:/media/SED/calibre

