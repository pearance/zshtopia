#!/bin/bash

# Create Folders
#------------------------------------------------------------------------------
mkdir -p ~/trash/
mkdir -p ~/tmp/
mkdir -p ~/backup/



# Backup any remnants of an existing bash environment.
#------------------------------------------------------------------------------
cd ~
mkdir -p ~/backup/bashtopia/
for i in .profile .bashrc .bash_aliases .bash
  do [ -e $i ] && mv -f --backup=t $i backup/bashtopia/$i.bashtopia.bak
done
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



# Generate git config file.




# Clean up.
#------------------------------------------------------------------------------
rm ~/.install.sh
echo -e "\nCleaned up successfully!\n"

