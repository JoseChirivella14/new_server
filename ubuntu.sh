#! /bin/sh
echo This functionality of this script its to install Ruby on Rails
sudo apt-get update
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev openssl libreadline libreadline-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt1-dev autoconf libc6-dev ncurses-dev automake libtool bison python-software-properties libffi-dev
echo Installing rbenv 
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
echo Install Ruby
rbenv install 2.2.0
rbenv global 2.2.0
echo "gem: --no-document" > ~/.gemrc
echo Installing Bundler
gem install bundler
echo Installing Rails
gem install rails -v 4.2.4
rbenv rehash
echo Adding Node.js PPA to apt-get
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
