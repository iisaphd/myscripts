#!/bin/bash
ffmpeg -i "concat:1.ts|2.ts" -c copy -bsf:a aac_adtstoasc "$1"