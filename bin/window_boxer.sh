#!/bin/bash

sloppy=$(slop -c 0,1,1,0.3 -l -f "%x %y %w %h")
if [ -z "$sloppy" ]; then
    exit 1;
fi
set $sloppy
x=$1
y=$2
width=$3
height=$4
xdotool getactivewindow windowmove $x $y windowsize $width $height
