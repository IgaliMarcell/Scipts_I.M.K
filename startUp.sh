#!/bin/sh

##
##language
##
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
##
##tree
##
echo "Downloading tree..."
sudo apt install tree
##
##SSH
##
read -p "Start ssh service?[y/n]>" Sssh
if [ $Sssh = "y" ]
then
echo "Starting SSH service..."
sudo service ssh start
echo "SSH service analysis..."
sudo service ssh status
fi
##
##vscode
##
read -p "Install vscode?[y/n]>" vscode
if [ $vscode = "y" ]
then
echo "Downloading vscode..."
sudo wget https://www.dropbox.com/s/dlqb6dw6d920fzp/vscode.deb?dl=0
sudo mv /home/$USER/Desktop/vscode.deb?dl=0 /home/$USER/Downloads
echo "Download completed" 
echo "Starting install..."
sudo dpkg -i /home/$USER/Downloads/vscode.deb?dl=0
echo "Installing finished!"
fi
read -p "Remove vscode package?[y/n]>" rmVscode 
if [ $rmVscode = "y" ]
then 
sudo rm /home/$USER/Downloads/vscode.deb?dl=0
echo "Removing the package was completed!"
fi


echo "Start up config succesfully completed, have a nice day :)"
