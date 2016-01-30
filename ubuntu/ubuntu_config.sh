#!/bin/sh
#INSTALL

sudo apt-get update
sudo apt-get -y dist-upgrade

#Repositories/Sources

#Skype
sudo dpkg --add-architecture i386
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

#LibreOffice 5
sudo add-apt-repository -y ppa:libreoffice/ppa

#Deluge Torrent Client
sudo add-apt-repository ppa:deluge-team/ppa

#Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#Sublime Text 3
sudo add-apt-repository -y  ppa:webupd8team/sublime-text-3

#Node.js
sudo apt-get -y install curl 
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash - 

#Ruby
#sudo apt-add-repository ppa:brightbox/ruby-ng

#Java Developement Kit
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update 

#Installs 

#Utility Group 
sudo apt-get -y install skype 
# if(!ubuntu) {sudo apt-get -y install libreoffice} else 
sudo apt-get -y upgrade 
sudo dpkg -i google-chrome*.deb 
sudo apt-get -y install deluge
sudo apt-get -y install vlc
sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"


#Programming Tools
sudo apt-get -y install sublime-text-installer
sudo apt-get -y install vim emacs
sudo apt-get -y install git
sudo apt-get -y install oracle-java8-installer
sudo echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$\n--> '" >> ~/.bashrc

#Web Develpement Tools
sudo apt-get install --yes nodejs
#sudo apt-get -y install ruby2.2

sudo apt-get -y -f install
