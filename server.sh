#!/bin/bash

echo "please run with sudo (sudo ./server.sh)"
sudo apt-get update #make sure you have all up to date packadges 
sudo apt-get upgrade
mkdir valheim
sudo useradd -m steam
sudo passwd steam 

sudo -u steam -s
cd /home/steam
sudo apt install steamcmd


sudo add-apt-repository multiverse /
 sudo dpkg --add-architecture i386
 sudo apt update
 sudo apt install lib32gcc-s1 steamcmd 
