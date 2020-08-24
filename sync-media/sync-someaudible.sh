#!/bin/bash
echo pi4
rsync -av --delete-during /media/SED/audible$1/* pi@pi4:/media/SED/audible$1
echo pi3
rsync -av --delete-during /media/SED/audible$1/* osmc@pi3:/media/SED/audible$1
echo pi2
rsync -av --delete-during /media/SED/audible$1/* osmc@pi2:/media/SED/audible$1
#echo pi1
#rsync -av --delete-during /media/SED/audible$1/* osmc@pi1:/media/SED/audible$1
