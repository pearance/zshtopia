#!/bin/bash
# vim:fdm=marker:
#          _     _              _
#  _______| |__ | |_ ___  _ __ (_) __ _
# |_  / __| '_ \| __/ _ \| '_ \| |/ _` |
#  / /\__ \ | | | || (_) | |_) | | (_| |
# /___|___/_| |_|\__\___/| .__/|_|\__,_|
#                        |_|
# (_)_ __  ___| |_ __ _| | |  ___| |__
# | | '_ \/ __| __/ _` | | | / __| '_ \
# | | | | \__ \ || (_| | | |_\__ \ | | |
# |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|
#
# Author:         Fontaine Cook
# Description:    Vimez installation script.
# ------------------------------------------------------------------------------


# PACKAGE INSTALLS {{{
clear
cd ~
sudo aptitude update
sudo aptitude install -y zsh tmux trash-cli
# curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo -e "\nInstalled zsh successfully!\n"
#------------------------------------------------------------------------------


#}}}
# BACKUP ANY EXISTING ENVIRONMENT {{{
mkdir -p ~/backups/pre-zshtopia/

for i in .zshrc .zsh .zshrc.pre-oh-my-zsh
	do [ -e $i  ] && mv -f --backup=t $i ~/backups/pre-zshtopia/$i.bak
done

for i in .zshrc .zsh .zshrc.pre-oh-my-zsh
	do [ -e $i  ] && rm -f $i
done
echo -e "\nBackedup existing environment successfully!\n"
#------------------------------------------------------------------------------


#}}}
# CLONE ZSHTOPIA {{{
git clone https://github.com/zshtopia/zshtopia.git ~/.zsh
cd ~/.zsh/
git submodule init
git submodule update
echo -e "\nCloned zshtopia successfully!\n"
#------------------------------------------------------------------------------


#}}}
# LINK TO CONFIGURATION FILES {{{
cd ~
ln -sf ~/.zsh/zshrc ~/.zshrc
echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------


#}}}
# WRAP UP {{{
#------------------------------------------------------------------------------
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
zsh

# TODO: Option to archive .profile .bashrc .bash_history
# }}}
