#!/bin/bash
sudo cp google-chrome.repo /etc/yum.repos.d/
su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
sudo cp skype /usr/bin/
sudo chmod 755 /usr/bin/skype
sudo dnf -y upgrade
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'
sudo rm fedy-installer
sudo dnf install -y vlc vim-enhanced vim-X11 git clementine deluge
sudo dnf install -y lsb libXScrnSaver
sudo dnf install -y google-chrome-stable
sudo dnf groupinstall -y "Development Tools" "Development Libraries"
# sudo dnf install -y gstreamer1-libav gstreamer1-plugins-good gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer-ffmpeg gstreamer-plugins-good gstreamer-plugins-ugly gstreamer-plugins-bad gstreamer-plugins-bad-free gstreamer-plugins-bad-nonfree

# Vim Installation
git clone https://github.com/horea-chivu/vim_setup.git
cd vim_setup
bash vim_ini.sh
sudo ln -s ~/.vim /root/
sudo ln -s ~/.vimrc /root/
cd ../
sudo rm -r vim_setup

# Skype Installation
sudo dnf install -y alsa-lib.i686 fontconfig.i686 freetype.i686 glib2.i686 libSM.i686 libXScrnSaver.i686 libXi.i686 libXrandr.i686 libXrender.i686 libXv.i686 libstdc++.i686 pulseaudio-libs.i686 qt.i686 qt-x11.i686 zlib.i686 qtwebkit.i686
cd /tmp
wget --trust-server-names http://www.skype.com/go/getskype-linux-dynamic
sudo mkdir /opt/skype
sudo tar xvf skype-4.3* -C /opt/skype --strip-components=1
sudo ln -s /opt/skype/skype.desktop /usr/share/applications/skype.desktop
sudo ln -s /opt/skype/icons/SkypeBlue_48x48.png /usr/share/icons/skype.png
sudo ln -s /opt/skype/icons/SkypeBlue_48x48.png /usr/share/pixmaps/skype.png
cd ~/
#

sudo dnf install -y mesa-libGL.i686
sudo curl -sL https://rpm.nodesource.com/setup_5.x | bash -
sudo dnf install -y nodejs

