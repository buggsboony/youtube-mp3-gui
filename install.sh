#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh
#peut être extension vide

echo "Set executable..."
chmod +x $what$extension
#echo "lien symbolique vers usr bin"
sudo ln -s "$PWD/$what$extension" /usr/bin/$what

if [ -f $what.desktop ];
then
echo "Install desktop file.."
sudo desktop-file-install $what.desktop
fi


echo "done."
