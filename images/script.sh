#!/bin/bash

PATH=/usr/local/bin:/usr/bin:/bin

# cd to the directory of the image so we can work with just filenames
dir="$(dirname "$1")"
cd "$dir" || exit 1
base="$(basename "$1" .png)"

# create a WebP version of the PNG
cwebp -q 80 "$base".png -o "$base".webp

echo "Deleting old file"
rm -f "$base".png