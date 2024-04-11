echo "Cancel the script if u want u have 5 seconds"
sleep 5
#Pacman
sudo pacman -Syu
sudo pacman -S kitty
sudo pacman -S qbittorrent
sudo pacman -S fastfetch
sudo pacman -S gnome
sudo pacman -S sway
sudo pacman -S swaybg
sudo pacman -S xdg-desktop-portal-wlr
sudo pacman -S gammastep 
sudo pacman -S wofi
sudo pacman -S pavucontrol
sudo pacman -S yay
sudo pacman -S flatpak
sudo pacman -S lxappearance
sudo pacman -S thunar
sudo pacman -S playerctl
sudo pacman -S waybar
sudo pacman -S steam
sudo pacman -S wine
sudo pacman -S winetricks
sudo pacman -S speedtest-cli
sudo pacman -S htop
sudo pacman -S cmatrix
sudo pacman -S goverlay
sudo pacman -S xfce4-taskmanager
#Pacman end
systemctl --user restart xdg-desktop-portal
sudo mkdir /home/$USER/.config/qBittorrent/
wget https://github.com/maboroshin/qBittorrentDarktheme/raw/master/ICEBERG.qbtheme -O /home/$USER/.config/qBittorrent/ICEBERG.qbtheme
#Wallpaper
wget https://github.com/hyprwm/Hyprland/blob/main/assets/wall2.png?raw=true -O wp.png
sudo mkdir /home/$USER/.config/sway/
sudo cp wp.png /home/$USER/.config/sway/wp.png
sudo rm wp.png
#Yay
yay -S cava --noconfirm
yay -S appimagelauncher --noconfirm
yay -S grimshot-bin-sway --noconfirm
yay -S wdisplays --noconfirm
yay -S noisetorch-bin --noconfirm
#Flatpak
sudo flatpak install io.github.spacingbat3.webcord
sudo flatpak install com.discordapp.Discord
sudo flatpak install org.gimp.GIMP
sudo flatpak install org.vinegarhq.Vinegar
sudo flatpak install com.github.unrud.VideoDownloader
sudo flatpak install me.hyliu.fluentreader
sudo flatpak install com.heroicgameslauncher.hgl
#sudo flatpak install org.deluge_torrent.deluge
#Clone dotfiles
git clone https://github.com/Twig6943/dotfiles/
#Rename kde crap
sudo mv /usr/bin/kwalletd5 /usr/bin/kwalletd55
sudo mv /usr/bin/kwalletd66 /usr/bin/kwalletd66
sudo mv /usr/bin/kwallet-query /usr/bin/kwallet-queryy
echo "Installation is done"
