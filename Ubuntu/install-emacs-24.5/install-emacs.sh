wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.xz
sudo apt-get -y install build-essential
sudo apt-get -y build-dep emacs24
tar -xf emacs-24.5.tar.* && cd emacs-24.5
./configure
make
sudo make install
cd ../
sudo cp Emacs-24.desktop /usr/share/applications/
sudo rm -r emacs-24.5
sudo rm emacs-24.*
