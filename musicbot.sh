#!/bin/bash
#Teamspeak Music Bot by javaj0hn - https://github.com/javaj0hn

clear
echo "============================================"
echo "TeamSpeak Music Bot Installer"
echo "Tested on Ubuntu 12.04 LTS"
echo "============================================"
echo "Updating...."
sudo apt-get update -qq
echo ""
echo "Installing pip"
wget -q https://bootstrap.pypa.io/get-pip.py
python get-pip.py
echo ""
echo "Installing & Running Pulseaudio, PavuControl, Zenity & Audacious"
apt-get install -qq pulseaudio pavucontrol zenity audacious
screen -d -m pulseaudio
echo ""
echo "Installing Mopidy"
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/mopidy.list
sudo apt-get update
sudo apt-get install -qq mopidy
echo ""
echo "Installing Mopidy MusicBox & Spotify Module"
sudo apt-get install -qq mopidy-spotify
pip install Mopidy-MusicBox-Webclient
echo ""
echo "Installing VNC"
sudo apt-get install -qq xfce4 xfce4-goodies tightvncserver
echo "Enter a VNC password"
vncserver
echo ""
echo "Installing TeamSpeak Client 3.0.13"
wget -qq http://dl.4players.de/ts/releases/3.0.13/TeamSpeak3-Client-linux_amd64-3.0.13.run
chmod u+x TeamSpeak3-Client-linux_amd64-3.0.13.run
echo "Accept the conditions and complete installation"
./TeamSpeak3-Client-linux_amd64-3.0.13.run
echo ""
echo "VNC into your server and run the teamspeak client."
echo "Configure mopidy to run using the server IP and to use your Spotify account. For more information see https://github.com/woutervanwijk/Mopidy-MusicBox-Webclient"
echo "If you hae any questions feel free to ask me @ https://github.com/javaj0hn/"
echo ""
