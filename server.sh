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
 
 sudo -u steam -s   #create a steam user for safety :) 
cd /home/steam
mkdir valheim

exit
cd /home/steam/valheim
echo '#!/bin/sh steamcmd +@sSteamCmdForcePlatformType linux +force_install_dir /home/steam/valheim +login anonymous +app_update 896660 validate +quit' >> InstallUpdate.sh 

pwd
chmod +x /home/steam/valheim/installUpdate.sh

./installUpdate.sh


echo '#!/bin/sh 
export templdpath=$LD_LIBRARY_PATH  
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH  
export SteamAppID=892970
echo "Starting server PRESS CTRL-C to exit"  
./valheim_server.x86_64 -name "Jams-Server" -port 2456 <-nographics> <-batchmode> -world "JamsKingdom" -password "10005" -public 1  
export LD_LIBRARY_PATH=$templdpath' >> valheim.sh

sudo chmod +x /home/steam/valheim.sh

su - steam #login as steam to launch and launch server
cd /home/steam/valheim/
./valheim.sh




