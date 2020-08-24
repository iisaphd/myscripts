#!/bin/bash
echo "pi5 (Den)..."
rsync -av --no-perms --progress  /cygdrive/d/music/classical/ pi@pi5:/media/SED/classical
echo "pi4 (Guest BR)..."
rsync -av --no-perms --progress  /cygdrive/d/music/classical/ pi@pi4:/media/SED/classical
echo "pi2 (Basement)..."
rsync -av --no-perms --progress  /cygdrive/d/music/classical/ osmc@pi2:/media/SED/classical
echo "pi1 (Deck)..."
#rsync -av --no-perms --progress   /cygdrive/d/music/classical/ osmc@pi:/media/SED/classical
#rsync -av --no-perms --progress  /cygdrive/d/music/classical/ osmc@pi1-lolli2:/media/Audio/classical
rsync -av --no-perms --progress --rsync-path=/storage/.kodi/addons/virtual.network-tools/bin/rsync /cygdrive/d/music/classical/ root@pi6:/media/Audio/classical
echo "pi3 (Master BR)..."
rsync -av --no-perms --progress  /cygdrive/d/music/classical/ osmc@pi3e:/media/SED/classical
