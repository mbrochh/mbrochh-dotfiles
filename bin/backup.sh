#!/bin/sh
# My internal SSD is not backed up. Application data can easily be installed
# again and all important files in the homefolder are backed up on github /
# dropbox.

# My internal drive shall be DRIVE01. 
# My extrnal Passport drive (DRIVE02) is a 500GB drive which extends DRIVE01
# Elements (DRIVE03) is the 2TB drive that stays at home
# Elements (DRIVE04) is another 2TB drive that stays at a different place from
# DRIVE03 (in case home catches fire).

# DRIVE01 + DRIVE02 must be smaller than DRIVE03 (preferrably only half the size)
# DRIVE04 must be equal to or larger than DRIVE03

# Chosen folders from DRIVE01 shall be rsynced to DRIVE03
# DRIVE02 shall be mirrored to DRIVE03
# DRIVE03 shall be mirrored to DRIVE04 

DRIVE01="/Volumes/Macintosh HD"
DRIVE02="/Volumes/My Passport"
DRIVE03="/Volumes/Elements"
DRIVE04="/Volumes/Elements 2"

rsync -av --delete --exclude="/.*" "$DRIVE01/Users/martin/Documents/" "$DRIVE03/Macintosh HD/Documents/"
rsync -av --delete --exclude="/.*" "$DRIVE01/Users/martin/Music/" "$DRIVE03/Macintosh HD/Music/"
rsync -av --delete --exclude="/.*" "$DRIVE01/Users/martin/Pictures/" "$DRIVE03/Macintosh HD/Pictures/"
rsync -av --delete --exclude="/.*" "$DRIVE02/" "$DRIVE03/My Passport/"
rsync -av --delete --exclude="/.*" "$DRIVE03/" "$DRIVE04/"
