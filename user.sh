#!/bin/bash

github_repositories='github_repositories.txt'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$(whoami)" == "root" ]; then
  echo "Error: You shouldn't run this script with root privileges" 1>&2
  echo "       Retry as a normal user" 1>&2
  exit 1
fi

# make symbolic links of dot files
cd $HOME
for path_to_file in $(find $DIR -name '.?*' | grep -v '\.git' | grep -v '\.\.' | grep -v '\.gdbinit' | grep -v '\.gitignore'); do
  ln -s $path_to_file $HOME
done
cp $DIR/.gdbinit $HOME
cd $HOME

# clone github repositories
mkdir $HOME/repo/
cd $HOME/repo/
for i in $(cat $DIR/$github_repositories); do
  git clone $i
done
cd $HOME

# setup vim
cd $HOME
mkdir -p $HOME/.vim/{autoload,colors,plugged}
cp $HOME/repo/vim-plug/plug.vim $HOME/.vim
cp $HOME/repo/heroku-colorscheme/colors/* $HOME/.vim/colors/
cd $HOME
