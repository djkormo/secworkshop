#!/bin/bash

logger "Beginning installation"

apt-get -y update
sudo apt-get install lxde -y 
sudo apt-get install xrdp -y 
sudo /etc/init.d/xrdp start

logger "Ending installation"