#!/bin/bash

# User input.
clear
echo -e "\nFor your git configuration, please enter your..."
echo -e "\nFull Name:"
read $USER_FULLNAME

echo -e "\nEmail Address:"
read $USER_EMAIL
#------------------------------------------------------------------------------



# Updates and installs.
aptitude update
aptitude install git-core zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo -e "\nInstalled zsh successfully!\n"
#------------------------------------------------------------------------------



# Create Folders
mkdir -p ~/trash/
mkdir -p ~/tmp/
mkdir -p ~/backup/
echo -e "\nCreated folder structure successfully!\n"
#------------------------------------------------------------------------------



# Backup any existing environment.
mkdir -p ~/backup/shelltopia/

if [ -f ~/.tmux.conf  ] || [ -h ~/.tmux.conf  ]
then
	mv ~/.tmux.conf ~/backup/shelltopia/.tmux.conf
fi

if [ -f ~/.shelltopia ] || [ -h ~/.shelltopia  ]
then
	mv ~/.shelltopia ~/backup/shelltopia/.shelltopia
fi
echo -e "\nBackedup existing environment successfully!\n"
#------------------------------------------------------------------------------



# Clone Shelltopia.
git clone git://github.com/pearance/shelltopia.git ~/.shelltopia
echo -e "\nCloned Shelltopia successfully!\n"
#------------------------------------------------------------------------------



# Link to configuration files.
ln -s ~/.shelltopia/zshrc ~/.zshrc
ln -s ~/.shelltopia/tmux.conf ~/.tmux.conf
ln -s ~/.shelltopia/gitconfig ~/.gitconfig
echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------



# Generate git config file.
git config --global user.name "$USER_FULLNAME"
git config --global user.email "$USER_EMAIL"
echo -e "\nGit configured successfully!\n"
#------------------------------------------------------------------------------



# Clean up.
source ~/.zshrc
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
#------------------------------------------------------------------------------

