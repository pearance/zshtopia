#vim:fdm=marker:
#!/bin/bash
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

# Author:         Fontaine Cook
# Description:    Vimez installation script.
# ------------------------------------------------------------------------------

clear

# UPDATES AND INSTALLS {{{
aptitude update
aptitude install git-core zsh tmux
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo -e "\nInstalled zsh successfully!\n"
#------------------------------------------------------------------------------


#}}}
# CREATE FOLDERS {{{
mkdir -p ~/bin/
mkdir -p ~/backups/
mkdir -p ~/trash/
echo -e "\nCreated folder structure successfully!\n"
#------------------------------------------------------------------------------


#}}}
# BACKUP ANY EXISTING ENVIRONMENT {{{
mkdir -p ~/backups/pre-zshtopia/

for i in .zshrc .zsh .tmux.conf .zshrc.pre-oh-my-zsh .gitconfig
	do [ -e $i  ] && mv -f --backup=t $i ~/backups/pre-zshtopia/$i.bak
done

for i in .zshrc .tmux.conf
	do [ -e $i  ] && rm -f $i
done
echo -e "\nBackedup existing environment successfully!\n"
#------------------------------------------------------------------------------


#}}}
# CLONE ZSHTOPIA {{{
git clone https://github.com/zshtopia/zshtopia.git ~/.zsh
echo -e "\nCloned zshtopia successfully!\n"
#------------------------------------------------------------------------------


#}}}
# LINK TO CONFIGURATION FILES {{{
cd ~
ln -s .zsh/zshrc ~/.zshrc
ln -s .zsh/tmux.conf ~/.tmux.conf
cp ~/.zsh/gitconfig ~/.gitconfig
echo -e "\nLinked configuration files successfully!\n"
#------------------------------------------------------------------------------


#}}}
# USER iNPUT {{{
echo -e "For your git configuration, please enter your..."
read -p "Full Name: " fullname
echo
read -p "Email Address: " email
#------------------------------------------------------------------------------


#}}}
# GENERATE GIT CONFIG FILE {{{
git config --global user.name "$fullname"
git config --global user.email "$email"
echo -e "\nGit configured successfully!\n"
#------------------------------------------------------------------------------


#}}}
# CLEAN UP {{{
#------------------------------------------------------------------------------
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
zsh
#}}}
