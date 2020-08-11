#!/bin/bash

echo "";
echo "Installing RVM and dependencies...";
echo "";

sudo apt-get install software-properties-common;
sudo apt-add-repository -y ppa:rael-gc/rvm;
sudo apt-get install rvm;
/bin/bash --login;

rvm install ruby;
gem install rails bundler;