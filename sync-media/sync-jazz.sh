#!/bin/bash
rsync -av --delete-after /media/SED/jazz pi@pi4:/media/SED/
rsync -av --delete-after /media/SED/jazz pi@pi3:/media/SED/
rsync -av --delete-after /media/SED/jazz pi@pi2:/media/SED/
rsync -av --delete-during  --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /media/SED/jazz root@pi6:/media/Audio/
