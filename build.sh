#!/bin/bash -e

VER=$(jq -r '.version' manifest.json)

# zip for upload and move to desktop
FNAME="Subscribe_$VER.zip"

zip -r $FNAME . -x *.git* build.sh .DS_Store
mv $FNAME ~/Desktop
