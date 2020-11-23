#!/bin/bash
echo "pi5 (Den)..."
rsync -av --no-perms --progress /cygdrive/c/Users/matth/Music/audible/ pi@pi5:/media/SED/audible
echo "pi4 (Guest BR)..."
rsync -av --no-perms --progress /cygdrive/c/Users/matth/Music/audible/ pi@pi4:/media/SED/audible
echo "pi2 (Basement)..."
rsync -av --no-perms --progress /cygdrive/c/Users/matth/Music/audible/ osmc@pi2:/media/SED/audible
echo "pi1 (Deck)..."
#rsync -av --no-perms --progress /cygdrive/c/Users/matth/Music/audible/ osmc@pi:/media/SED/audible
rsync -av --no-perms --progress /cygdrive/c/Users/matth/Music/audible/ root@192.168.0.101:/media/Audio/audible
echo "pi3 (Master BR)..."
rsync -av --no-perms --progress /cygdrive/c/Users/matth/Music/audible/ osmc@pi3e:/media/SED/audible
