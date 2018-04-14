#!/bin/bash
rename 's/ //g' *
for i in `seq 0 $1`; do mkdir $i; mv $i*.mp3 $i/; done
