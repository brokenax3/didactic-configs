#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#1e1e1e/g' \
         -e 's/rgb(100%,100%,100%)/#fbf1c7/g' \
    -e 's/rgb(50%,0%,0%)/#282828/g' \
     -e 's/rgb(0%,50%,0%)/#83a598/g' \
 -e 's/rgb(0%,50.196078%,0%)/#83a598/g' \
     -e 's/rgb(50%,0%,50%)/#282828/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#282828/g' \
     -e 's/rgb(0%,0%,50%)/#fbf1c7/g' \
	"$@"