#!/bin/bash

git_repositories='ctf_git_repositories.txt'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d "$HOME/repo" ]; then
  mkdir $HOME/repo/
fi
cd $HOME/repo/
for i in $(cat $DIR/$git_repositories); do
  git clone $i
done
cd $HOME
