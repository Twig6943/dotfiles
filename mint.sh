#Install the Qredshift extension for night light if you're on Cinnamon
#https://cinnamon-spices.linuxmint.com/applets/view/313
echo "Cancel the script if u want u have 5 seconds"
sleep 5
#Da important stuff
sudo apt update
sudo apt install git   
#sudo apt install gnome
sudo apt install steam
#sudo apt install nemo
sudo apt install wget
sudo apt insall kitty
#Alacritty start (disabled)
#sudo add-apt-repository ppa:aslatter/ppa -y
#sudo apt update
#sudo apt install alacritty
#Alacritty end
#Linux Stuff
sudo apt install speedtest-cli
sudo apt install pipewire
sudo apt install wireplumber
sudo apt install pavucontrol
sudo apt install lxappearance
sudo apt install winetricks
sudo apt install vulkan-tools

#Sway stuff (enabled)
sudo apt install sway
sudo apt install swaybg
sudo apt install swayidle
sudo apt install swaylock
sudo apt install xdg-desktop-portal-wlr
sudo apt install wdisplays
sudo apt install waybar 
sudo apt install playerctl
sudo apt install wofi
sudo apt install grim
sudo apt install grimshot
sudo apt install gammastep
#Sway stuff (enabled)

#Fastfetch & APpImageLauncher
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.13.1/fastfetch-linux-amd64.deb -O /home/$USER/Downloads/fastfetch.deb
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
sudo flatpak install app.ytmdesktop.ytmdesktop
sudo flatpak install dev.vencord.Vesktop
sudo flatpak install com.discordapp.Discord
sudo flatpak install org.gimp.GIMP
sudo flatpak install org.vinegarhq.Vinegar
sudo flatpak install com.github.unrud.VideoDownloader
sudo flatpak install me.hyliu.fluentreader
sudo flatpak install com.heroicgameslauncher.hgl
sudo flatpak install com.github.eneshecan.WhatsAppForLinux
sudo flatpak install org.duckstation.DuckStation
sudo flatpak install ca.parallel_launcher.ParallelLauncher
sudo flatpak install org.flameshot.Flameshot
sudo flatpak install org.prismlauncher.PrismLauncher
#sudo flatpak install flathub org.wezfurlong.wezterm
sudo flatpak install io.github.ungoogled_software.ungoogled_chromium
sudo flatpak install io.github.TheWisker.Cavasik
sudo flatpak install com.github.tchx84.Flatseal
sudo flatpak install org.qbittorrent.qBittorrent
sudo flatpak install io.mrarm.mcpelauncher
sudo flatpak install org.zdoom.GZDoom
sudo flatpak install im.fluffychat.Fluffychat

#Brawl // Animation (flatpak)
sudo flatpak install org.synfig.SynfigStudio
sudo flatpak install org.inkscape.Inkscape
sudo flatpak install com.jpexs.decompiler.flash

#AppImage Package manager
curl https://raw.githubusercontent.com/srevinsaju/zap/main/install.sh | sudo bash -s
zap init
zap install --github --from Heroic-Games-Launcher/HeroicGamesLauncher
zap install --github --from minecraft-linux/appimage-builder
zap install --github --from VSCodium/vscodium
zap install --github --from th-ch/youtube-music

#Crap folder stuff
sudo mkdir /crap/
sudo wget https://github.com/maboroshin/qBittorrentDarktheme/raw/master/ICEBERG.qbtheme -O /crap/ICEBERG.qbtheme
#Wallpapers
mkdir /home/$USER/wallpapers
wget https://github.com/Twig6943/dotfiles/blob/main/wp.png?raw=true -O /home/$USER/wallpapers/wp.png
wget https://github.com/Twig6943/dotfiles/blob/main/1203800.jpg?raw=true -O /home/$USER/wallpapers/wp2.png
#Clone the repository
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles
#Gnome window not responding fix
#gsettings set org.gnome.mutter check-alive-timeout 60000
echo "Installation is done"
#Fart
