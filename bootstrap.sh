#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  bash ./updates.sh
  bash ./zsh-setup.sh
  bash ./ruby-setup.sh
  bash ./node-setup.sh
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doit;