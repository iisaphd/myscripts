#!/bin/bash
rsync -av --delete-after --no-perms /media/SED/audible/ pi@pi4:/media/SED/audible
rsync -av --delete-after --no-perms /media/SED/audible/ pi@pi3:/media/SED/audible
rsync -av --delete-after --no-perms /media/SED/audible/ pi@pi2:/media/SED/audible
rsync -av --delete-after --no-perms /media/SED/audible/ matt@office:/media/SED/audible

