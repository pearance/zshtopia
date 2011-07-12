#!/bin/bash

# Backup any remnants of an existing bash environment.
mkdir -p ~/.bashtopia.backup
for i in ~/.profile ~/.bashrc ~/.bash_aliases ~/.bash
  do [ -e $i ] && mv -f $i bashtopia.backup/$i.bashtopia.bak
done
rm -f ~/.profile
rm -f ~/.bashrc
rm -f ~/.bash_aliases
echo -e "\nBackedup existing Bash environment successfully!\n"



# Clone Bashtopia.
rm -r ~/.bash
git clone git://github.com/Bashtopia/Bashtopia.git ~/.bash
echo -e "\nCloned Bashtopia successfully!\n"



# Link to configuration files.
ln -s ~/.bash/profile ~/.profile
ln -s ~/.bash/bashrc ~/.bashrc
ln -s ~/.bash/bash_aliases ~/.bash_aliases
echo -e "\nLinked to configuration files successfully!\n"



# Clean up.
rm ~/install.sh
rm ~/.bash/install.sh
echo -e "\nCleaned up successfully!\n"

