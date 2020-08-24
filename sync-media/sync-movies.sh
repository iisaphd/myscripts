#!/bin/bash
echo pi4
rsync -av --progress --delete-after /media/SED/movies pi@pi4:/media/SED/
echo pi3
rsync -av --progress --delete-after /media/SED/movies osmc@pi3:/media/SED/
echo pi2
rsync -av --progress --delete-after /media/SED/movies osmc@pi2:/media/SED/
echo pi1
rsync -av --delete-after /media/SED/movies osmc@pi1:/media/SED/
