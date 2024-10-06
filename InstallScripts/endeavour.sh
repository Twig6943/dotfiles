#Install OnionMediaX manually

echo "Cancel the script if u want u have 5 seconds"
sleep 5

#Update & Install YaY
sudo pacman -Syu
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
sudo pacman -Sy git

#Qbit theme
mkdir /home/$USER/.config/qBittorrent/
wget https://github.com/maboroshin/qBittorrentDarktheme/raw/master/ICEBERG.qbtheme -O /home/$USER/.config/qBittorrent/ICEBERG.qbtheme

#Wallpaper
mkdir /home/$USER/wallpapers
wget https://github.com/hyprwm/Hyprland/blob/main/assets/wall2.png?raw=true -O /home/$USER/wallpapers/wp.png

sudo pacman -S libappimage
#Install "AM"
mkdir /home/$USER/Applications
wget -q https://raw.githubusercontent.com/ivan-hc/AM/main/AM-INSTALLER
chmod a+x ./AM-INSTALLER
./AM-INSTALLER

#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles

#Create /crap/ folder 
sudo mkdir /crap
sudo chown $USER 777 /crap
sudo chown 777 /crap
sudo chmod 777 /crap

echo "Installation is done"
sleep 5
