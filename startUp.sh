#!/bin/sh

sudo apt-get install x11-xkb-utils

read -p "Default language?(hu)[y/n]>" lang
if [ $lang = "y" ]
then
echo "Changing to Hungarian language..."
setxkbmap hu
else
read -p "What will be the language?>" Clang
echo "Changing to the choosen language...$Clang"
setxkbmap $Clang
fi

echo "Downloading tree..."
sudo apt install tree

read -p "Start ssh service?[y/n]>" Sssh
if [ $Sssh = "y" ]
then
echo "Starting SSH service..."
service ssh start
fi

echo "Start up config succesfully completed, have a nice day :)"
