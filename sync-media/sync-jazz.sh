#!/bin/bash
rsync -av --delete-after /media/SED/jazz pi@pi4:/media/SED/
rsync -av --delete-after /media/SED/jazz pi@pi3:/media/SED/
rsync -av --delete-after /media/SED/jazz pi@pi2:/media/SED/

