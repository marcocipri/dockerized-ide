#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
echo "proceeding for int  ${1}"
#dir=~/`dirname $0`                    # dotfiles directory
dir=/tmp/dotfiles/                    # dotfiles directory
files="bashrc config fzf fzf.bash fzf.zsh install.sh local oh-my-zsh vim vimrc zshrc"    # list of files/folders to symlink in homedir
##########
# change to the dotfiles directory
    echo "Changing to the $dir directory"
    cd $dir
    echo "...done"
   
    # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
    for file in $files; do
        echo "Copy to $file in home directory."
        cp -r $dir/$file ~/.$file
    done  
mkdir -p "/home/$1/Documents/Projects/go/Proj1/bin"
cp /tmp/goIdeBin/* "/home/$1/Documents/Projects/go/Proj1/bin"
find ~/./ -type f -exec sed -i "s/mcipri/$1/" {} \;
