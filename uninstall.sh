#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh
#peut être extension vide 
 
echo "killing running instances"
killall $what

echo "removing symbolic link from usr bin"
sudo rm /usr/bin/$what
echo "removing data folder /usr/share/youtube-mp3-gui"
sudo rm -rf /usr/share/youtube-mp3-gui
echo "removing desktop icon"
sudo rm /usr/share/applications/$what.desktop"
echo "done."

