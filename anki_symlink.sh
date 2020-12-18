#!/bin/bash

############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

##### New Machine?

# cd ~/dotelse
# chmod +x anki_symlinks.sh
# chmod 774 anki_symlinks.sh
# ./anki_symlinks.sh

##### Variables

#  directory
dir=~/dotelse
# list of files/folders to symlink in homedir
files="_anki_base.css"
# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"
# create symlinks
for file in $files; do
echo "Let's create symlink to $file in your home directory."
ln -s $dir/$file ~/.local/share/Anki2/fladrif/collection.media/$file
done
