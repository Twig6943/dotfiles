echo "Cancel the script if u want u have 5 seconds"
sleep 5
#Update & Install YaY
sudo pacman -Syu
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
sudo pacman -Sy git
#Pacman
sudo pacman -S qbittorrent
sudo pacman -S fastfetch
sudo pacman -S jq
sudo pacman -S pavucontrol
sudo pacman -S yay
sudo pacman -S flatpak
sudo pacman -S lxappearance
sudo pacman -S thunar
sudo pacman -S steam
sudo pacman -S wine
sudo pacman -S winetricks
sudo pacman -S speedtest-cli
sudo pacman -S htop
sudo pacman -S cmatrix
sudo pacman -S mangohud
sudo pacman -S goverlay
sudo pacman -S xfce4-taskmanager
#sudo pacman -S gnome


#Nvidia Stuff (Disabled)
#git clone https://github.com/Frogging-Family/nvidia-all.git
#cd nvidia-all
#makepkg -si

#WM stuff
sudo pacman -S hyprland
yay -S hyprshade --noconfirm
sudo pacman -S sway
sudo pacman -S swaybg
sudo pacman -S swaylock
sudo pacman -S kitty
sudo pacman -S xdg-desktop-portal-wlr
#sudo pacman -S gammastep
sudo pacman -S waybar
sudo pacman -S playerctl
sudo pacman -S wofi

systemctl --user restart xdg-desktop-portal
mkdir /home/$USER/.config/qBittorrent/
wget https://github.com/maboroshin/qBittorrentDarktheme/raw/master/ICEBERG.qbtheme -O /home/$USER/.config/qBittorrent/ICEBERG.qbtheme
#Wallpaper
mkdir /home/$USER/wallpapers
wget https://github.com/hyprwm/Hyprland/blob/main/assets/wall2.png?raw=true -O /home/$USER/wallpapers/wp.png
#Yay
yay -S grimshot-bin-sway --noconfirm
yay -S wdisplays --noconfirm
yay -S noisetorch-bin --noconfirm
#Flatpak
sudo flatpak install xyz.armcord.ArmCord
sudo flatpak install com.discordapp.Discord
sudo flatpak install io.github.shiftey.Desktop
sudo flatpak install org.gimp.GIMP
sudo flatpak install org.vinegarhq.Vinegar
sudo flatpak install com.github.unrud.VideoDownloader
sudo flatpak install me.hyliu.fluentreader
sudo flatpak install io.github.ungoogled_software.ungoogled_chromium
sudo flatpak install io.github.TheWisker.Cavasik
sudo flatpak install com.github.tchx84.Flatseal
sudo flatpak install io.github.peazip.PeaZip
sudo flatpak install org.prismlauncher.PrismLauncher
sudo flatpak install gg.guilded.Guilded
sudo flatpak install org.duckstation.DuckStation
sudo flatpak install com.github.eneshecan.WhatsAppForLinux
sudo flatpak install im.fluffychat.Fluffychat
sudo flatpak install org.freedesktop.Platform.VulkanLayer.MangoHud
#Brawl // Animation 
sudo flatpak install org.synfig.SynfigStudio
sudo flatpak install org.inkscape.Inkscape
sudo flatpak install com.jpexs.decompiler.flash

#Disabled flatpaks
#sudo flatpak install flathub org.wezfurlong.wezterm
#sudo flatpak install org.deluge_torrent.deluge

#AppImages
#APPIMAGE DEFAULT DIRECTORY: /home/twig/.local/share/zap/v2
mkdir /home/$USER/Applications
yay -S appimagelauncher-bin --noconfirm
sudo curl https://raw.githubusercontent.com/srevinsaju/zap/main/install.sh | sudo bash -s
zap init
zap install --github --from Heroic-Games-Launcher/HeroicGamesLauncher
zap install --github --from minecraft-linux/appimage-builder
zap install --github --from VSCodium/vscodium
zap install --github --from ungoogled-software/ungoogled-chromium-portablelinux
yo
#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles
#Cavasik config
wget https://raw.githubusercontent.com/Twig6943/dotfiles/main/cavasik/config.cavasik -O /home/$USER/.var/app/io.github.TheWisker.Cavasik/config/cavasik/config.cavasik


#Create /crap/ folder 
sudo mkdir /crap
sudo chown $USER 777 /crap
sudo chown 777 /crap
sudo chmod 777 /crap



#Rename kde crap
sudo mv /usr/bin/kwalletd5 /usr/bin/kwalletd55
sudo mv /usr/bin/kwalletd66 /usr/bin/kwalletd66
sudo mv /usr/bin/kwallet-query /usr/bin/kwallet-queryy

echo "Installation is done"
sleep 5
