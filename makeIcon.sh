#!/bin/bash

###################################################################
#Script Name	:MakeIcon.sh
#Description	:Converting image to .icns file.
#Args    		:Image file path
#Author       	:receyuki                                              
#Email         	:receyuki@gmail.com                                           
###################################################################

echo "Start making icon..."

filepath=$1
cd "$(dirname "$filepath")"
filename=$(basename "$filepath")
iconname=${filename%.*}".icns"
mkdir .icons.iconset
sips -z 16 16	--setProperty format png "$filename" --out .icons.iconset/icon_16x16.png
sips -z 32 32	--setProperty format png "$filename" --out .icons.iconset/icon_16x16@2x.png
sips -z 32 32	--setProperty format png "$filename" --out .icons.iconset/icon_32x32.png
sips -z 64 64	--setProperty format png "$filename" --out .icons.iconset/icon_32x32@2x.png
sips -z 128 128	--setProperty format png "$filename" --out .icons.iconset/icon_128x128.png
sips -z 256 256	--setProperty format png "$filename" --out .icons.iconset/icon_128x128@2x.png
sips -z 256 256	--setProperty format png "$filename" --out .icons.iconset/icon_256x256.png
sips -z 512 512	--setProperty format png "$filename" --out .icons.iconset/icon_256x256@2x.png
sips -z 512 512	--setProperty format png "$filename" --out .icons.iconset/icon_512x512.png
sips -z 1024 1024	--setProperty format png "$filename" --out .icons.iconset/icon_512x512@2x.png
iconutil -c icns .icons.iconset -o $iconname
rm -rf .icons.iconset

echo "Finished."