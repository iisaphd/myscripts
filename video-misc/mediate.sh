#!/bin/bash
#mediate
ffmpeg -i $1 -c copy -bsf:v h264_mp4toannexb -f mpegts part1.ts
ffmpeg -i $2 -c copy -bsf:v h264_mp4toannexb -f mpegts part2.ts
ffmpeg -f mpegts -i "concat:part1.ts|part2.ts" -c copy -bsf:a aac_adtstoasc $3
rm part*.ts
