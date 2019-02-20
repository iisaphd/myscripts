#!/bin/bash
echo pi4
rsync -av --delete-after /media/SED/audible pi@pi4:/media/SED/
echo pi3
rsync -av --delete-after /media/SED/audible pi@pi3:/media/SED/
echo pi2
rsync -av --delete-after /media/SED/audible pi@pi2:/media/SED/

