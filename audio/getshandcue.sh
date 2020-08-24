find . -iname "*.sh" -print0 | tar -cvf  sh.tar --null -T -
find . -iname "*.cue" -print0 | tar -cvf  cue.tar --null -T -
