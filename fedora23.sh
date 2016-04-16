#!/bin/bash

su -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'

bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'

sudo rm fedy-installer
sudo dnf install -y vlc vim-enhanced vim-X11 git clementine deluge emacs gcc-c++ make menulibre
sudo dnf groupinstall -y "Development Tools" "Development Libraries"

#Install NodeJS
su -c "curl -sL https://rpm.nodesource.com/setup_5.x | bash -"
sudo dnf install -y nodejs

# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
# $ sudo /usr/local/bin/composer --self-update
