#!/bin/bash

git_repositories='git_repositories.txt'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$(whoami)" == "root" ]; then
  echo "Error: You shouldn't run this script with root privileges" 1>&2
  echo "       Retry as a normal user" 1>&2
  exit 1
fi

# make symbolic links of dot files
cd $HOME
for path_to_file in $(find $DIR -name '.?*' | grep -v '\.git' | grep -v '\.\.' | grep -v '\.gitignore') .gitconfig ; do
  if [ -f "$HOME/$(basename $path_to_file)" ]; then
    rm $HOME/$(basename $path_to_file)
  fi
  ln -s $path_to_file $HOME
done
cd $HOME

# clone git repositories
if [ ! -d "$HOME/repo" ]; then
  mkdir $HOME/repo/
fi
cd $HOME/repo/
for i in $(cat $DIR/$git_repositories); do
  git clone $i
done
cd $HOME

# setup vim
cd $HOME
if [ -d "$HOME/.vim" ]; then
  rm -rf $HOME/.vim
fi
mkdir -p $HOME/.vim/{autoload,colors,plugged}
cp $HOME/repo/vim-plug/plug.vim $HOME/.vim/autoload
cp $HOME/repo/heroku-colorscheme/colors/* $HOME/.vim/colors/
cd $HOME
