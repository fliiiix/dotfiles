#!/bin/bash
for image in *.CR2  
do 
    dcraw -c -q 0 -w -H 5 -b 8 $image | cjpeg -quality 80 > ${image%.CR2}.jpg
done
