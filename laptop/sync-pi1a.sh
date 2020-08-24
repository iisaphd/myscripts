#!/bin/bash
echo "pi5 (Den)..."
#rsync -av --no-perms --progress /cygdrive/d/music/audible/ pi@pi5:/media/SED/audible
echo "pi4 (Guest BR)..."
#rsync -av --no-perms --progress /cygdrive/d/music/audible/ pi@pi4:/media/SED/audible
echo "pi2 (Basement)..."
#rsync -av --no-perms --progress /cygdrive/d/music/audible/ osmc@pi2:/media/SED/audible
echo "pi1 (Deck)..."
#rsync -av --no-perms --progress /cygdrive/d/music/audible/ osmc@pi:/media/SED/audible
#rsync -av --no-perms --progress /cygdrive/d/music/audible/ osmc@pi1-lolli2:/media/Audio/audible
rsync -av --no-perms --progress --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /cygdrive/d/music/audible/ root@pi6:/media/Audio/audible
echo "pi3 (Master BR)..."
#rsync -av --no-perms --progress /cygdrive/d/music/audible/ osmc@pi3e:/media/SED/audible
