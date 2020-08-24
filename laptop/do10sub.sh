#!/bin/bash
for i in `seq 0 9`; do mkdir 0$i; mv $2_0$i* 0$i; done
for i in `seq 10 $1`; do mkdir $i; mv $2_$i* $i; done


