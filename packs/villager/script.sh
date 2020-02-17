#!/bin/bash

# get gnomes session
PID=$(pgrep -o gnome-session)
# get deepin session
if [ -z "$PID" ]
then
    PID=$(pgrep -o dde-session-dae)
fi
# get mint session
if [ -z "$PID" ]
then
    PID=$(pgrep -o cinnamon-sessio)
fi

export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

path=$(dirname $(readlink -f $0))

img=$(ls $path/wallpapers/* | shuf -n1)
sound=$(ls $path/sounds/* | shuf -n1)

pactl -- set-sink-volume 0 $(($$%10))0%
gsettings set org.gnome.desktop.background picture-uri "file://$img"
aplay $sound