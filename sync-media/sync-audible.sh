#!/bin/bash
echo pi4
rsync -av --delete-after /media/SED/audible pi@pi4:/media/SED/
echo pi3
rsync -av --delete-after /media/SED/audible osmc@pi3:/media/SED/
echo pi2
rsync -av --delete-after /media/SED/audible osmc@pi2:/media/SED/
#echo pi1
#rsync -av --delete-after /media/SED/audible osmc@pi1:/media/SED/
echo pi6
rsync -av --delete-during  --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /media/SED/audible  root@pi6:/media/Audio/
