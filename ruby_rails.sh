#! /bin/sh
echo This functionality of this script it's to install Ruby and Ruby on Rails
sudo apt-get update
sudo apt-get install git build-essential libssl-dev libcurl4-openssl-dev openssl libreadline libreadline-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt1-dev autoconf libc6-dev ncurses-dev automake libtool python-software-properties libffi-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
rbenv install 2.3.1
rbenv global 2.3.1
rbenv rehash
echo "gem: --no-rdoc --no-ri" >> .gemrc
gem install bundler
gem install rails -v 4.2.4
