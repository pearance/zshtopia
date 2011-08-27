#!/bin/bash

# User input.
clear
echo -e "\nFor your git configuration, please enter your..."
echo -e "\nFull Name:"
read $USER_FULLNAME

echo -e "\nEmail Address:"
read $USER_EMAIL
echo -e "\nBackedup existing Bash environment successfully!\n"
#------------------------------------------------------------------------------



# Create Folders
mkdir -p ~/trash/
mkdir -p ~/tmp/
mkdir -p ~/backup/
echo -e "\nBackedup existing Bash environment successfully!\n"
#------------------------------------------------------------------------------



# Backup any existing bash environment.
cd ~
mkdir -p ~/backup/bashtopia/
for i in .profile .bashrc .bash_aliases .bash .tmux.conf
  do [ -e $i ] && mv -f --backup=t $i backup/bashtopia/$i.bashtopia.bak
done
echo -e "\nBackedup existing Bash environment successfully!\n"
#------------------------------------------------------------------------------



# Clone Bashtopia.
git clone git://github.com/Bashtopia/Bashtopia.git ~/.bash
echo -e "\nCloned Bashtopia successfully!\n"
#------------------------------------------------------------------------------



# Link to configuration files.
cd ~
ln -s .bash/profile .profile
ln -s .bash/bashrc .bashrc
ln -s .bash/bash_aliases .bash_aliases
ln -s .bash/tmux.conf .tmux.conf
echo -e "\nLinked to configuration files successfully!\n"
#------------------------------------------------------------------------------



# Generate git config file.
generate_gitconfig >> ~/.gitconfig
function  generate_gitconfig {
cat << _EOF_
[alias]
  lg = log --graph --pretty=format:'%C(magenta)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative

[core]
  editor = "vim -c start"
  excludesfile = ~/.gitignore

[diff]
  tool = vimdiff

[pager]
  diff =

[difftool]
  prompt = false

[color]
  branch = auto
  diff = auto
  status = auto

[color "branch"]
  current = yellow reverse
  local = magenta
  remote = green

[color "diff"]
  meta = yellow bold
  frag = magenta bold
  old = red bold
  new = white bold

[color "status"]
  added = green
  changed = yellow
  untracked = red
_EOF_
}
git config --global user.name "$USER_FULLNAME"
git config --global user.email "$USER_EMAIL"
echo -e "\nGit configured successfully!\n"
#------------------------------------------------------------------------------



# Clean up.
rm ~/install.sh
echo -e "\nCleaned up successfully!\n"
#------------------------------------------------------------------------------

