#!/bin/sh
# My internal drive shall be Drive01.
# My Passport (Drive02) is a 500GB drive which extends Drive01
# Elements (Drive03) is the 2TB drive that stays at home
# TODO: Elements (Drive04) is another 2TB drive that stays at home

# Drive01 + Drive02 must be smaller than Drive03 (preferrably only half the size)
# Drive04 must be equal to or larger than Drive03

# Chosen folders from Drive01 shall be rsynced to Drive03
# Drive02 shall be mirrored to Drive03
# Drive03 is a git repo and keeps track of all changes with every backup run

# Prepare Drive03 / 04:
# sudo rm -rf .Trashes 
# touch .Trashes
# sudo rm -rf .Spotlight-V100
# touch .metadata_never_index
# cd .fseventsd
# rm *
# touch no_log
# git init
# git commit -am "Initial commit"

DRIVE01="/Volumes/Macintosh HD"
DRIVE02="/Volumes/My Passport"
DRIVE03="/Volumes/Elements"

rsync -av --delete --exclude="/.*" "$DRIVE01/Users/martin/Pictures/iPhoto Library/" "$DRIVE03/Macintosh HD/Users/martin/Pictures/iPhoto Library/"
rsync -av --delete --exclude="/.*" "$DRIVE01/Users/martin/Music/iTunes/" "$DRIVE03/Macintosh HD/Users/martin/Music/iTunes/"
rsync -av --delete --exclude="/.*" "$DRIVE02/" "$DRIVE03/My Passport/"
