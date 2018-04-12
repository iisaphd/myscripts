#!/bin/bash
rsync -av --delete-after --no-perms /media/SED/mymusic/ pi@pi4:/media/SED/mymusic
rsync -av --delete-after --no-perms /media/SED/mymusic/ pi@pi3:/media/SED/mymusic
rsync -av --delete-after --no-perms /media/SED/mymusic/ pi@pi2:/media/SED/mymusic
rsync -av --delete-after --no-perms /media/SED/mymusic/ matt@office:/media/SED/mymusic

