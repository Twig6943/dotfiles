echo "Cancel the script if u want u have 10 seconds"
sleep 10

#Update
eos-update

#Install flatpak
sudo pacman -S flatpak --noconfirm

#Flatpak repositories
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#Idk how to add sober's repo only without gpg errors
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref 

#Extra flatpak installation folder (CHECK "NOTES/README.MD" FOR MORE INFO)
sudo mkdir -p /etc/flatpak/installations.d

#Install AppImage stuff
mkdir /home/$USER/Applications

#Install AM
yay -S am --noconfirm

#Rebos
am -i rebos --noconfirm

#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles

#Wallpaper
sudo mkdir /usr/share/wallpapers/Custom/
sudo wget https://github.com/hyprwm/Hyprland/blob/main/assets/install/wall2.png?raw=true -O /usr/share/wallpapers/Custom/wall1.png

#Create /crap/ folder 
sudo mkdir /crap
sudo chown $USER 777 /crap
sudo chown 777 /crap
sudo chmod 777 /crap

echo "Installation is done"
sleep 5
