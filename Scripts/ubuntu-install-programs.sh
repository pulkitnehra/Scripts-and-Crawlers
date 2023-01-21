#!/bin/bash

# Before moving forward please note that this script will work best if you have
# ubuntu version >=18.04
# This file works with most of debian based distribution like Zorin, Linux Mint etc


# here -yy means it will not ask for user's permission to install
# -qq will continue with the installation even if an error occurs

# # install jdk
sudo apt update -qq
sudo apt install -yy openjdk-11-jdk 

# # install eclipse
sudo snap install eclipse --classic

# # install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text -yy

#

# install the latest version of git
sudo add-apt-repository -qq ppa:git-core/ppa
sudo apt-get install git -yy

# Install google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -yy

# Install VSCODE
sudo apt update -qq
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -yy

# Install IntelliJ
sudo snap install intellij-idea-community --classic

# Install Pycharm
sudo snap install pycharm-community --classic
# Install codeblocks
sudo apt install codeblocks -yy

#Install vlc
sudo snap install vlc -yy

#Install Spotify
sudo apt-get install snapd
sudo snap install spotify -yy

# Install python virtualenv and pip
sudo apt install python3 -yy
sudo apt install python3-pip -yy
sudo apt install python3-virtualenv -yy


# Install AnyDesk
sudo apt update -qq
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update -qq
sudo apt install anydesk -yy

# Install Telegram
sudo snap install telegram-desktop -yy

# Install obs studio
sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update && sudo apt install obs-studio -y

# Install sql server
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add – 
sudo apt-get update &&  sudo apt-get install -y mssql-server 
sudo /opt/mssql/bin/mssql-conf setup 
sudo systemctl start mssql-server 
systemctl status mssql-server 

# Install Flameshot Screen Capture Application
sudo apt install flameshot -yy

# Install NetSpeed Monitor
sudo apt install gnome-shell-extension-prefs
# for more info: -https://ubuntuhandbook.org/index.php/2020/06/download-upload-speed-ubuntu-20-04-panel/


 # # Install sqlodbc2017 and 
# curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
# echo "deb [arch=amd64] https://packages.microsoft.com/ubuntu/18.04/prod bionic main" | sudo tee /etc/apt/sources.list.d/mssql-release.list
# sudo apt update && sudo apt install msodbcsql17
# sudo apt update && sudo apt-get install mssql-tools 
## stop the service, replace stop with status or start
# systemctl stop mssql-server.service
# # start localhost
# sqlcmd -S localhost -U SA
