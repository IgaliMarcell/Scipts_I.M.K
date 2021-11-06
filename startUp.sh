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
sudo service ssh start
echo "SSH service analysis..."
sudo service ssh status
fi

read -p "Install vscode?[y/n]>" vscode
if [ $vscode = "y" ]
then
echo "Downloading vscode..."
sudo wget https://www.dropbox.com/s/dlqb6dw6d920fzp/vscode.deb?dl=0
sudo mv /home/$USER/vscode /home/$USER/Downloads
echo "Download completed"
echo "Starting install..."
dpkg -i /home/$USER/Downloads/vscode.deb
echo "Installing finished!"
fi


echo "Start up config succesfully completed, have a nice day :)"
