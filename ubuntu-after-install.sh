#!/usr/bin/env bash

#update everything
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install snapd -y

#remove unwanted software
#sudo apt purge somepackage

#add ppa's

#nextcloud client
sudo apt-add-repository ppa:nextcloud-devs/client -y -no-update

#atom text editor
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0

#github command line interface
sudo apt-add-repository https://cli.github.com/packages -y

#keepassxc-latest
sudo add-apt-repository ppa:phoerious/keepassxc -y --no-update

#gamehub-latest
sudo add-apt-repository ppa:tkashkin/gamehub -y --no-update

#OBS
sudo add-apt-repository ppa:obsproject/obs-studio -y --no-update

#pop_os! themes
#sudo add-apt-repository ppa:system76/pop -y --no-update

#install software

#apt
sudo apt-get update
sudo apt-get install firefox nautilus-nextcloud atom telegram-desktop steam gnome-tweaks gnome-extensions keepassxc -y #basics
#sudo apt-get install com.github.tkashkin.gamehub -y #gamehub
#sudo apt-get install gh -y #github cli
#sudo apt-get install libreoffice-calc libreoffice-writer libreoffice-gnome libreoffice-impress libreoffice-math libreoffice-l10n-de -y #office
sudo apt-get install texlive texlive-lang-german texlive-latex-extra cm-super -y #LateX
sudo apt-get install gramps -y

#install obs: uncommend if desired
#sudo apt-get install ffmpeg -y
#sudo apt-get install obs-studio -y

#snap
sudo snap refresh
sudo snap install discord

#configure software

#theming

#apply wallpaper
#cp ./automation/wallpaper.png /usr/share/backgrounds/Tuetenk0pp-automation-wallpaper.png
#gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/Tuetenk0pp-automation-wallpaper.png

#install and apply grub theme
#git clone https://github.com/vinceliuice/grub2-themes.git
#cd grub2-themes/
#sudo ./install.sh --vimix --boot
#cd
#sudo rm -r grub-themes/
#grub-customizer &
#read -p "Are you done? Press [ENTER] to continue"

#configure firefox
cat ./automation/firefox.txt
firefox &
read -p "Are you done? Press [ENTER] to continue"

#configure gnome-extensions
#gnome-extensions disable ubuntu-dock@ubuntu.com
#gnome-extensions enable dash-to-dock@micxgx.gmail.com user-theme@gnome-shell-extensions.gcampax.github.com
#gnome-extensions prefs dash-to-dock@micxgx.gmail.com
#read -p "Are you done? Press [ENTER] to continue"

#apply pop_os! themes
#sudo apt-get install pop-theme
#gnome-tweaks
#read -p "Are you done? Press [ENTER] to continue"

sudo apt autoremove -y

cat ./automation/final.txt
