#!/bin/bash

git_repositories='util_git_repositories.txt'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# make symbolic links of the config files
cd $HOME
for path_to_file in $(find $DIR -name '.?*' | grep -v '\.git' | grep -v '\.\.' | grep -v '\.gitignore') $DIR/.gitconfig ; do
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
