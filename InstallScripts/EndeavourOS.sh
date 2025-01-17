echo "Starting within 10 seconds"

sleep 10

#Update
eos-update

#Install flatpak & disk util
sudo pacman -S flatpak --noconfirm
sudo pacman -S gnome-disk-utility --noconfirm #DO NOT REMOVE

#Extra flatpak installation folder (CHECK "NOTES/README.MD" FOR MORE INFO)
sudo mkdir -p /etc/flatpak/installations.d

#Install AppImage stuff
mkdir /home/$USER/Applications

#Install YaY
paru -S yay-bin --noconfirm

#Install AM
yay -S am --noconfirm

#Rebos
am -i rebos
rebos setup
rebos config init

#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles

#Wallpapers
sudo mkdir /usr/share/wallpapers/Custom/
sudo wget https://lemmy.today/pictrs/image/ff5c85e4-3df6-452b-bb4c-e2abf4be3ae5.jpeg -O /usr/share/wallpapers/Custom/Stolas.png
sudo wget https://github.com/hyprwm/Hyprland/blob/main/assets/install/wall2.png?raw=true -O /usr/share/wallpapers/Custom/hyprchan.png

#Create /crap/ folder 
sudo mkdir /crap
sudo chown $USER 777 /crap
sudo chown 777 /crap
sudo chmod 777 /crap

echo "Installation is done"
sleep 5
