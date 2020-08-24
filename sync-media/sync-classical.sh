#!/bin/bash
echo pi4
rsync -av --delete-after /media/SED/classical pi@pi4:/media/SED/
echo pi3
rsync -av --delete-after /media/SED/classical osmc@pi3:/media/SED/
echo pi2
rsync -av --delete-after /media/SED/classical osmc@pi2:/media/SED/
#echo pi1
#rsync -av --delete-after /media/SED/classical osmc@pi1:/media/SED/
echo pi6
rsync -av --delete-during  --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /media/SED/classical root@pi6:/media/Audio/
