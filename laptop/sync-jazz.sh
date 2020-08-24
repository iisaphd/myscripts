#!/bin/bash
echo "pi5 (Den)..."
rsync -av --no-perms --progress /cygdrive/d/music/jazz/ pi@pi5:/media/SED/jazz
echo "pi4 (Guest BR)..."
rsync -av --no-perms --progress /cygdrive/d/music/jazz/ pi@pi4:/media/SED/jazz
echo "pi2 (Basement)..."
rsync -av --no-perms --progress /cygdrive/d/music/jazz/ osmc@pi2:/media/SED/jazz
echo "pi1 (Deck)..."
#rsync -av --no-perms --progress /cygdrive/d/music/jazz/ osmc@pi:/media/SED/jazz

#rsync -av --no-perms --progress /cygdrive/d/music/jazz/ osmc@pi1-lolli2:/media/Audio/jazz
rsync -av --no-perms --progress --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /cygdrive/d/music/jazz/ root@pi6:/media/Audio/jazz


echo "pi3 (Master BR)..."
rsync -av --no-perms --progress /cygdrive/d/music/jazz/ osmc@pi3e:/media/SED/jazz
