#This is a README for servers. No for desktop, you could but there's a lot of repos that it's not going to being use on desktop environments

#Login as root
ssh root@domain

# Create deploy user
adduser <username> #Adds User with username given. Enter Password when Prompted. Other Details are Optional
# Add user to sudo group
usermod -g <groupname> <username>
Add .ssh/authorized_keys for deploy user

#update and upgrade packages
sudo apt-get update
sudo apt-get upgrade

# Install curl
sudo apt-get install curl

# Install RVM
curl -L get.rvm.io | bash -s stable

# Source RVM
source ~/.rvm/scripts/rvm
*Relogin to shell*

# RVM requirements
rvm requirements

# Enable RVM autolibs to autoinstall requirements
rvm autolibs enable

# RVM requirements
rvm requirements

# Install ruby
rvm install 2.2.0

# Set default
rvm --default use 2.2.0

# Install current ruby gems
rvm rubygems current

# Before installing set gem config to NOT do rdoc and ri installation
echo "gem: --no-rdoc --no-ri" >> .gemrc

# Install rails
gem install rails -v 4.2.4 # to install specific version use like - gem install rails -v 3.0.1

# Install passenger
gem install passenger

# Install Nginx
rvmsudo passenger-install-nginx-module

# Make nginx service as per http://askubuntu.com/questions/257108/trying-to-start-nginx-on-vps-i-get-nginx-unrecognized-service
# Download nginx startup script
wget -O init-deb.sh https://www.linode.com/docs/assets/660-init-deb.sh

# Move the script to the init.d directory & make executable
sudo mv init-deb.sh /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx

# Add nginx to the system startup
sudo /usr/sbin/update-rc.d -f nginx defaults

# Start nginx
sudo service nginx start 

# Connect Nginx to rails project
sudo vim /opt/nginx/conf/nginx.conf

# Make following settings in nginx conf
server { 
listen 80; 
server_name example.com; 
passenger_enabled on; 
root /var/www/my_awesome_rails_app/public; 
}

# Install nodejs if not previously installed

# Install mysql server and other related components
sudo apt-get install mysql-server libmysqld-dev
