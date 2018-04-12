#!/bin/bash
ffmpeg -i $1 -vf scale=1080:-1 o$1

