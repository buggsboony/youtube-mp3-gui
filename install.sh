#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh
#peut être extension vide


#check installed package , is paquage installed ?
#pacman -Qi youtube-dl | grep -i version
if [ $(pacman -Qi youtube-dl | grep -i version | wc -l) == 1 ]; then 
echo "youtube-dl already installed OK"
else
sudo pacman -S youtube-dl
fi



echo "modifying desktop file"
cp $what.desktop_original $what.desktop
sed -i "s;HOME_PATH;$HOME;g" $what.desktop
echo "moving desktop file"
dest="/usr/share/applications/$what.desktop"
sudo mv $what.desktop "$dest"
echo "Creating path"
sudo mkdir -p /usr/share/youtube-mp3-gui
echo "Copy icon image"
sudo cp youtube.png /usr/share/youtube-mp3-gui/
echo "Set executable..."
chmod +x $what$extension
#echo "lien symbolique vers usr bin"
sudo ln -s "$PWD/$what$extension" /usr/local/bin/$what

if [ -f $dest ];
then
echo "Install desktop file.."
sudo desktop-file-install $dest
fi


echo "done."
