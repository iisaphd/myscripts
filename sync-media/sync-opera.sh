#!/bin/bash
echo pi4
rsync -av --delete-after /media/SED/opera pi@pi4:/media/SED/
echo pi3
rsync -av --delete-after /media/SED/opera osmc@pi3:/media/SED/
echo pi2
rsync -av --delete-after /media/SED/opera osmc@pi2:/media/SED/
#echo pi1
#rsync -av --delete-after /media/SED/opera osmc@pi1:/media/SED/
echo pi6
rsync -av --delete-during  --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /media/SED/opera root@pi6:/media/Audio/
