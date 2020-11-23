#!/bin/bash
echo "pi5 (Den)..."
rsync -av --no-perms --progress /cygdrive/d/music/mymusic/ pi@pi5:/media/SED/mymusic
echo "pi4 (Guest BR)..."
rsync -av --no-perms --progress /cygdrive/d/music/mymusic/ pi@pi4:/media/SED/mymusic
echo "pi2 (Basement)..."
rsync -av --no-perms --progress /cygdrive/d/music/mymusic/ osmc@pi2:/media/SED/mymusic
echo "pi1 (Deck)..."
#rsync -av --no-perms --progress /cygdrive/d/music/mymusic/ osmc@pi:/media/SED/mymusic
rsync -av --no-perms --progress /cygdrive/d/music/mymusic/ osmc@pi1-lolli2:/media/Audio/mymusic
echo "pi3 (Master BR)..."
rsync -av --no-perms --progress /cygdrive/d/music/mymusic/ osmc@pi3e:/media/SED/mymusic
