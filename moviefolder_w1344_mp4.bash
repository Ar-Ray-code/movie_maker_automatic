#!/bin/bash
DATA=$1
FILENAME=${DATA}*
mkdir ${DATA}/input/

for filepath in $FILENAME; do
    # echo $filepath
    FILENAME=${filepath%.*}
    ffmpeg -i $filepath -vf scale=1344:-1 ${FILENAME}.mp4
    mv $filepath ${DATA}/input/
done