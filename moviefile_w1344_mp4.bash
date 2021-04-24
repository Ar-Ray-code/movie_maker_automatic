#!/bin/bash
DATA=$1

FILENAME=${DATA%.*}
echo $FILENAME

ffmpeg -i $1 -vf scale=1344:-1 ${FILENAME}.mp4