#!/usr/bin/env bash
cd ~

#update everything
sudo apt-get update && sudo apt-get upgrade -yy
sudo apt-get install snap -yy

#remove software
#sudo apt purge somepackage

#add pps's
sudo add-apt-repository ppa:nextcloud-devs/client                               #nextcloud
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -  #atom
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'


#install software
#apt
sudo apt-get update
sudo apt-get install firefox nextcloud-desktop atom thunderbird telegram -yy

#snap
sudo snap refresh
sudo snap install keepassxc
