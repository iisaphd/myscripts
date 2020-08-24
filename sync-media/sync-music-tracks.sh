#!/bin/bash
echo pi4
rsync -av --delete-after /media/SED/music-tracks pi@pi4:/media/SED/
echo pi3
rsync -av --delete-after /media/SED/music-tracks osmc@pi3:/media/SED/
echo pi2
rsync -av --delete-after /media/SED/music-tracks osmc@pi2:/media/SED/
echo pi1
rsync -av --delete-after /media/SED/music-tracks osmc@pi1:/media/SED/
