#!/bin/bash

xrectselOutput=$(xrectsel)

widthAndHeight=${xrectselOutput%+*} # retain the part before the '+'

corners=${xrectselOutput:${#widthAndHeight}+1} # cut the first part of the string in variable

homePath=$HOME
outputName="$homePath/Videos/"
outputName+=$(date +"%Y_%m_%d_%H_%M_%S.mp4")

ffmpeg -video_size $widthAndHeight -framerate 60 -f x11grab -i :1.0+$corners $outputName
