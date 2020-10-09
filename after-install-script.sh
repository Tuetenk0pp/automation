#!/usr/bin/env bash
cd ~

#update everything
sudo apt-get update && sudo apt-get upgrade -yy
sudo apt-get install snapd -yy

#remove software
#sudo apt purge somepackage

#add ppa's

#nextcloud client
sudo apt-add-repository ppa:nextcloud-devs/client -yy -no-update

#atom text editor
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0

#github command line interface
sudo apt-add-repository https://cli.github.com/packages -yy --no-update

#keepassxc-latest
sudo add-apt-repository ppa:phoerious/keepassxc -yy --no-update


#install software
#apt
sudo apt-get update
sudo apt-get install firefox nautilus-nextcloud atom thunderbird telegram-desktop \
gh steam grub-customizer gnome-tweaks libreoffice-calc libreoffice-writer libreoffice-gnome \
libreoffice-impress libreoffice-math libreoffice-l10n-de keepassxc -yy

#install obs: uncommend if desired
#sudo apt install ffmpeg
#sudo add-apt-repository ppa:obsproject/obs-studio
#sudo apt install obs-studio

#snap
sudo snap refresh
sudo snap install discord

#configure software
