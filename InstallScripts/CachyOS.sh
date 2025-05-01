echo "Please update via CachyOS-hello first."

read -n 1 -s

echo "Please Switch your shell profile to bash."

read -n 1 -s

sleep 10

#Install flatpak & disk util
sudo pacman -S flatpak --noconfirm
sudo pacman -S gnome-disk-utility --noconfirm #DO NOT REMOVE

#Chaotic-aur (replace your /etc/pacman.conf manually too)
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

#Extra flatpak installation folder (CHECK "NOTES/README.MD" FOR MORE INFO)
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
wget https://raw.githubusercontent.com/Twig6943/dotfiles/refs/heads/main/ShellProfiles/BASH/.bashrc

#Install Soar
yay -S soar-bin --noconfirm
soar defconfig --external

#Rebos
soar install rebos#gitlab.com.Oglo12.rebos:bincache
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
