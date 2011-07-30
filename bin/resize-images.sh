#!/bin/sh
# Creates a folder ``resized`` and resizes all .JPG images in the
# current folder into the new folder.
#
# Usage:
#
# resize-images.sh 40

mkdir ./resized
find . -name "*.JPG" | xargs -i convert -scale $1% {} ./resized/{}
