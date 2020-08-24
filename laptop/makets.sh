#!/bin/bash
ffmpeg -i "$1" -c copy -bsf:v h264_mp4toannexb -f mpegts "$2.ts"
