#!/bin/bash
ffmpeg -i "$1" -c:v copy -bsf:a aac_adtstoasc "0.mp4"

