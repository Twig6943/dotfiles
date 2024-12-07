echo "Cancel the script if u want u have 10 seconds"
sleep 10

#Update
eos-update

#Extra flatpak installations (Check readme.md for the guide)
sudo mkdir -p /etc/flatpak/installations.d
#sudoedit /etc/flatpak/installations.d/extra.conf
#export XDG_DATA_DIRS="${XDG_DATA_DIRS:+$XDG_DATA_DIRS:}/path/to/your/custom/desktop/files"

#Flatpak repositories
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref

#Rebos Arch repo
#sudo bash -c 'echo -e "\n[oglo-arch-repo]\nSigLevel = Optional DatabaseOptional\nServer = https://gitlab.com/Oglo12/\$repo/-/raw/main/\$arch" >> /etc/pacman.conf'
#sudo pacman -Syy
#sudo pacman -S rebos

#Install AppImage stuff
#sudo pacman -S libappimage #turns out its not needed
mkdir /home/$USER/Applications

#Install AM
yay -S am

#Rebos
am -i rebos

#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles

#Wallpaper
mkdir /home/$USER/wallpapers
wget https://github.com/hyprwm/Hyprland/blob/main/assets/install/wall2.png?raw=true -O /home/$USER/wallpapers/wp.png

#Create /crap/ folder 
sudo mkdir /crap
sudo chown $USER 777 /crap
sudo chown 777 /crap
sudo chmod 777 /crap

echo "Installation is done"
sleep 5
