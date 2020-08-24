#!/bin/bash
for i in *; do cd "$i"; dot.sh ; cd ..; done
