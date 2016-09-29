#!/bin/bash

sudo mkdir -p /opt/<%= appName %>/
sudo mkdir -p /opt/<%= appName %>/config
sudo mkdir -p /opt/<%= appName %>/tmp

sudo chown ${USER} /opt/<%= appName %> -R
# sudo chown ${USER} /etc/init
# sudo chown ${USER} /etc/
sudo chown ${USER} /etc/systemd/system/
sudo chown ${USER} /lib/systemd/system/


sudo npm install -g forever userdown wait-for-mongo node-gyp

# Creating a non-privileged user
sudo useradd meteoruser || :
