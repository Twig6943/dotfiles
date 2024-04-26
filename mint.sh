echo "Cancel the script if u want u have 5 seconds"
sleep 5
sudo apt update
sudo apt install git   
#sudo apt install gnome
#Alacritty start (disabled) 
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update
sudo apt install alacritty
#Alacritty end (disabled)
sudo apt install speedtest-cli
sudo apt install pipewire
sudo apt install wireplumber
sudo apt install pavucontrol
sudo apt install lxappearance
sudo apt install winetricks
#Sway stuff
sudo apt install sway
sudo apt install waybar 
sudo apt install playerctl
sudo apt install wofi
sudo apt install grimshot
sudo apt install gammastep
#Fastfetch
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.8.10/fastfetch-linux-amd64.deb -O /home/$USER/Downloads/fastfetch.deb
wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb -O /home/$USER/Downloads/appimage.deb
sudo dpkg -i /home/$USER/Downloads/fastfetch.deb
sudo dpkg -i /home/$USER/Downloads/appimage.deb
sudo rm /home/$USER/Downloads/fastfetch.deb
sudo rm /home/$USER/Downloads/appimage.deb
#Playit
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit
#Wine
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update
sudo apt install --install-recommends winehq-stable
#MangohudandGoverlay
cd /home/$USER/Downloads
git clone https://github.com/Twig6943/MangoHudandGoverlayInstaller
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/desktopfile.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/uninstalldesktopfile.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/uninstall.sh /home/$USER/Downloads
chmod +x install.sh
/home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh
#Flatpaks
sudo flatpak install dev.vencord.Vesktop
sudo flatpak install com.discordapp.Discord
sudo flatpak install org.gimp.GIMP
sudo flatpak install org.vinegarhq.Vinegar
sudo flatpak install com.github.unrud.VideoDownloader
sudo flatpak install me.hyliu.fluentreader
sudo flatpak install com.heroicgameslauncher.hgl
sudo flatpak install com.github.eneshecan.WhatsAppForLinux
sudo flatpak install org.duckstation.DuckStation
sudo flatpak install org.prismlauncher.PrismLauncher
#sudo flatpak install flathub org.wezfurlong.wezterm
sudo flatpak install io.github.ungoogled_software.ungoogled_chromium
sudo flatpak install io.github.TheWisker.Cavasik
sudo flatpak install com.valvesoftware.Steam
#Qbittorrent
sudo flatpak install org.qbittorrent.qBittorrent
sudo mkdir /Crap/
sudo wget https://github.com/maboroshin/qBittorrentDarktheme/raw/master/ICEBERG.qbtheme -O /Crap/ICEBERG.qbtheme
#Wallpapers
mkdir /home/$USER/wallpapers
wget https://github.com/hyprwm/Hyprland/blob/main/assets/wall2.png?raw=true -O /home/$USER/wallpapers/wp1.png
wget https://github.com/Twig6943/dotfiles/blob/main/1203800.jpg?raw=true -O /home/$USER/wallpapers/wp2.png
#Clone the repository
git clone https://github.com/Twig6943/dotfiles
#Gnome window not responding fix
#gsettings set org.gnome.mutter check-alive-timeout 60000
echo "Installation is done"
