#!/bin/bash

if [ "$(whoami)" != "root" ]; then
  echo "Error: You need root previleges" 1>&2
  echo "       Retry as a root user"
  exit 1
fi

package_list_file='apt_packages.txt'

for i in $(cat $package_list_file); do
  apt-get install $i
done
