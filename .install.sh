#!/bin/bash

# Backup any remnants of an existing bash environment.
#------------------------------------------------------------------------------
cd ~
mkdir -p ~/backup/bashtopia/
for i in .profile .bashrc .bash_aliases .bash
  do [ -e $i ] && mv -fb $i backup/bashtopio/$i.bashtopia.bak
done
# Just in case they are symlinks, remove them.
rm -f ~/.profile
rm -f ~/.bashrc
rm -f ~/.bash_aliases
rm -rf ~/.bash
echo -e "\nBackedup existing Bash environment successfully!\n"



# Clone Bashtopia.
#------------------------------------------------------------------------------
git clone git@github.com:Bashtopia/Bashtopia.git ~/.bash
echo -e "\nCloned Bashtopia successfully!\n"



# Link to configuration files.
#------------------------------------------------------------------------------
cd ~
ln -s .bash/profile .profile
ln -s .bash/bashrc .bashrc
ln -s .bash/bash_aliases .bash_aliases
echo -e "\nLinked to configuration files successfully!\n"



# Create trash folder for del alias.
mkdir -p ~/share/trash/



# Clean up.
#------------------------------------------------------------------------------
rm ~/.install.sh
echo -e "\nCleaned up successfully!\n"

