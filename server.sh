#! /bin/sh
echo This functionality of this script it's to install Ruby on Rails and NGINX with Passenger.
sudo apt-get update
sudo apt-get install curl
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
rvm autolibs enable
rvm requirements
rvm install 2.2.0
rvm --default use 2.2.0
rvm rubygems current
echo "gem: --no-rdoc --no-ri" >> .gemrc
gem install rails -v 4.1.7
