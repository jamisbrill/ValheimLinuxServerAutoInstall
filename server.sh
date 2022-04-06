#!/bin/bash

echo "please run with sudo (sudo ./server.sh)"
sudo apt-get update #make sure you have all up to date packadges 
sudo apt-get upgrade

cd
sudo useradd -m steam
sudo passwd steam 



sudo apt install steamcmd   #install the steambinaries?

#install for 64 bit systems
sudo add-apt-repository multiverse /
 sudo dpkg --add-architecture i386
 sudo apt update
 sudo apt install lib32gcc-s1 steamcmd
echo "Create steam user" 
 

cd /home/steam
sudo mkdir valheim


cd /home/steam/valheim
sudo echo '#!/bin/sh steamcmd +@sSteamCmdForcePlatformType linux +force_install_dir /home/steam/valheim +login anonymous +app_update 896660 validate +quit' >> InstallUpdate.sh 

pwd
sudo chmod +x /home/steam/valheim/installUpdate.sh

./installUpdate.sh
echo "First debug"

sudo echo '#!/bin/sh 
export templdpath=$LD_LIBRARY_PATH  
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH  
export SteamAppID=892970
echo "Starting server PRESS CTRL-C to exit"  
./valheim_server.x86_64 -name "Jams-Server" -port 2456 <-nographics> <-batchmode> -world "JamsKingdom" -password "10005" -public 1  
export LD_LIBRARY_PATH=$templdpath' >> valheim.sh

sudo chmod +x /home/steam/valheim.sh


cd /home/steam/valheim/
./valheim.sh

echo "2 debug"



