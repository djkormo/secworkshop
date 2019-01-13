#!/bin/bash

logger "Beginning installation"

sudo apt-get update -y 
sudo dpkg --configure -a # how to remove prompt
sudo apt --fix-broken install -y
sudo apt-get dist-upgrade -y 
sudo apt-get install -f gdm3 -y  # how to remove prompt
sudo apt-get install xrdp -y 
sudo systemctl enable xrdp
echo xfce4-session >~/.xsession
service xrdp restart

logger "Ending installation"
