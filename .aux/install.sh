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
aptitude install git-core zsh tmux
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo -e "\nInstalled zsh successfully!\n"
#------------------------------------------------------------------------------



# Create Folders
mkdir -p ~/bin/
mkdir -p ~/backups/
mkdir -p ~/trash/
echo -e "\nCreated folder structure successfully!\n"
#------------------------------------------------------------------------------



# Backup any existing environment.
mkdir -p ~/backups/pre-zshtopia/

for i in .zshrc .zsh .tmux.conf .zshrc.pre-oh-my-zsh .gitconfig
	do [ -e $i  ] && mv -f --backup=t $i ~/backups/pre-zshtopia/$i.bak
done

for i in .zshrc .tmux.conf
	do [ -e $i  ] && rm -f $i
done
echo -e "\nBackedup existing environment successfully!\n"
#------------------------------------------------------------------------------



# Clone Zshtopia.
git clone git://github.com/zshtopia/zshtopia.git ~/.zsh
echo -e "\nCloned zshtopia successfully!\n"
#------------------------------------------------------------------------------



# Link to configuration files.
ln -s ~/.zsh/zshrc ~/.zshrc
ln -s ~/.zsh/tmux.conf ~/.tmux.conf
cp ~/.zsh/gitconfig ~/.gitconfig
echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------



# Generate git config file.
git config --global user.name "$USER_FULLNAME"
git config --global user.email "$USER_EMAIL"
echo -e "\nGit configured successfully!\n"
#------------------------------------------------------------------------------


# Clean up.
#------------------------------------------------------------------------------
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
zsh

