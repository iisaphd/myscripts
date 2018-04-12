#!/bin/bash
rsync -av --delete-after /media/SED/jazz/ pi@pi4:/media/SED/jazz
rsync -av --delete-after /media/SED/jazz/ pi@pi3:/media/SED/jazz
rsync -av --delete-after /media/SED/jazz/ pi@pi2:/media/SED/jazz
rsync -av --delete-after /media/SED/jazz/ matt@office:/media/SED/jazz

