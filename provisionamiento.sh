#!/bin/bash


#settle down 
sleep 10

#UPDATE
echo "System Update and basics..."
sudo apt-get update
#sudo apt-get upgrade -y
sudo apt-get install ccze screen unzip -y

#i like screen so install it!!
echo "Moving screenrc..."
cp /vagrant/Assets/screenrc ~/.screenrc

#python3
echo "Installing python3 and virtual env dep's..."
sudo apt-get install -y python3-pip
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv

echo "Installing nginx"
sudo apt-get install nginx -y
sudo mkdir -p /var/www/example
sudo ln -s /vagrant/Assets/example_nginx.conf /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx
sudo cp /vagrant/Assets/site.html /var/www/example/index.html


