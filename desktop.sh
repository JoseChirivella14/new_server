#! /bin/sh
echo This functionality of this script it's to install Ruby on Rails 
sudo apt-get update
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison nodejs
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
rvm autolibs enable
rvm requirements
rvm install 2.2.0
rvm --default use 2.2.0
rvm rubygems current
echo "gem: --no-rdoc --no-ri" >> .gemrc
gem install rails -v 4.2.2
