#!/bin/bash

if [ "$(whoami)" != "root" ]; then
  echo "Error: You need root previleges" 1>&2
  echo "       Retry as a root user"
  exit 1
fi

package_list_file='apt_packages.txt'

cat $package_list_file | xargs apt-get -y install
