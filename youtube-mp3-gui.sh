#!/bin/bash

#Alias command, you can put in ~/.bashrc :
#alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0"

cd "$HOME/Musique"

link=$(kdialog --inputbox "Lien youtube ici" --title "Youtube-mp3-gui" --geometry 500x200)


if [ -z "$link" ]
then
echo "nothing to do"  
else    
echo "Launch youtube-dl"
youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "$link"
echo "opening directory '$PWD' "
dolphin . &
fi
echo "Wait 4s before exit"
sleep 4
