#!/bin/bash

# Before moving forward please note that this script will work best if you have
# ubuntu version >=18.04


# here -yy means it will not ask for user's permission to install
# -qq will continue with the installation even if an error occurs

# # install jdk
sudo apt update -qq
sudo apt install -yy openjdk-11-jdk 

# # install eclipse
sudo snap install eclipse --classic

# # install mysql server
sudo apt install -yy mysql-server
sudo mysql_secure_installation

#install the latest version of git
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

