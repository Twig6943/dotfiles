#!/usr/bin/env bash
echo "Please update via CachyOS-hello first."

echo "Please add;"
echo "[chaotic-aur]"
echo "Include = /etc/pacman.d/chaotic-mirrorlist"
echo "to /etc/pacman.conf once this script is done."
echo "Also run sudo pacman -Syu after this script."

chsh -s /usr/bin/bash $USER
read -n 1 -s

sleep 10

#Install flatpak & disk util
sudo pacman -S flatpak --noconfirm
sudo pacman -S gnome-disk-utility --noconfirm #DO NOT REMOVE

#Chaotic-aur (replace your /etc/pacman.conf manually too)
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo pacman -Syu --noconfirm

#Extra flatpak installation folder (See /flatpak/installations) 
sudo mkdir -p /etc/flatpak/installations.d

#Install AppImage stuff
mkdir /home/$USER/Applications

#Install YaY
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

#Bash profile fix
sudo rm ~/.bashrc
cd ~/
wget https://raw.githubusercontent.com/Twig6943/dotfiles/refs/heads/main/.bashrc
source ~/.bashrc

#Install Soar & am
yay -S soar-bin am --noconfirm
soar defconfig --external

# Install dbin
wget -qO- "https://raw.githubusercontent.com/xplshn/dbin/master/stubdl" | sh -s -- --install "$HOME/.local/bin/dbin"

#Rebos
soar install rebos#gitlab.com.Oglo12.rebos:bincache
rebos setup
rebos config init

#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles

# Create per-user wallpaper directory
mkdir ~/.local/share/wallpapers

#Create /crap/ folder 
sudo mkdir /crap
sudo chown $USER 777 /crap
sudo chown 777 /crap
sudo chmod 777 /crap

echo "Installation is done"
sleep 5
