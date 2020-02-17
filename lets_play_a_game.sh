#!/bin/bash

path=$(dirname $(readlink -f $0))

pactl -- set-sink-volume 0 50%
sleep 0.2
aplay $path/jigsaws_puppet_laugh.wav

sleep 1

pack=$(ls -d $path/packs/* | shuf -n 1)
/bin/bash $pack/script.sh