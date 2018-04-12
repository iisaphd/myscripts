#!/bin/bash
for i in `seq 0 $1`; do mkdir $i; mv $2$i* $i; done
