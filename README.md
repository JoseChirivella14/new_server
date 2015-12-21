#This is a README for servers. No for desktop, you could but there's a lot of repos that it's not going to being use on desktop environments

#Login as root
```
ssh root@domain
```

# Create deploy user
adduser <username> #Adds User with username given. Enter Password when Prompted. Other Details are Optional
# Add user to sudo group
```
usermod -g <groupname> <username>
```
Add .ssh/authorized_keys for deploy user

#update and upgrade packages
```
sudo apt-get update
sudo apt-get upgrade
```

# Install curl
```
sudo apt-get install curl
```
# Install dependencies that Rbenv and Ruby requires.
```
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```
# After you install those packages. We are ready to install rbenv.
```
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

# Install Ruby
```
rbenv install -v <the version you want. Example: 2.2.4>
rbenv global <the version you installed>
```

# Before installing set gem config to NOT do rdoc and ri installation
```
echo "gem: --no-rdoc --no-ri" >> .gemrc
```

# Install Bundler
```
gem install bundler
```

# Install rails
```
gem install rails -v 4.2.4 # to install specific version use like - gem install rails -v 3.0.1
```

# Whenever you install a new version of Ruby or a gem that provides commands, you should run the rehash sub-command. This will install shims for all Ruby executables known to rbenv, which will allow you to use the executables:
```
rbenv rehash
```

# Install passenger
```
gem install passenger
```

# Install Nginx
```
passenger-install-nginx-module
```

# Make nginx service as per http://askubuntu.com/questions/257108/trying-to-start-nginx-on-vps-i-get-nginx-unrecognized-service
# Download nginx startup script
```
wget -O init-deb.sh https://www.linode.com/docs/assets/660-init-deb.sh
```

# Move the script to the init.d directory & make executable
```
sudo mv init-deb.sh /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx
```

# Add nginx to the system startup
```
sudo /usr/sbin/update-rc.d -f nginx defaults
```

# Start nginx
```
sudo service nginx start 
```

# Connect Nginx to rails project
```
sudo vim /opt/nginx/conf/nginx.conf
```

# Make following settings in nginx conf
```
server { 
listen 80; 
server_name example.com; 
passenger_enabled on; 
root /var/www/my_awesome_rails_app/public; 
}
```

# Install nodejs if not previously installed
```
sudo apt-get install nodejs
```

# Install mysql server and other related components
```
sudo apt-get install mysql-server libmysqld-dev
```
