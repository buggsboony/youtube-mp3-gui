#!/bin/bash

#Alias command, you can put in ~/.bashrc :
#alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0"

link=$(kdialog --inputbox "Lien youtube ici")


if [ -z "$link" ]
then
echo "nothing to do"  
else    
youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "$link"
dolphin .
fi

