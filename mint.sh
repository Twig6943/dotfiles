echo "Cancel the script if u want u have 5 seconds"
sleep 5
sudo apt update
sudo apt install git gnome alacritty cava steam speedtest pipewire wireplumber pavucontrol lxappearance winetricks
#Sway stuff
#sudo apt install sway waybar playerctl wofi
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
/home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh
#Flatpaks
sudo flatpak install io.github.spacingbat3.webcord
sudo flatpak install com.discordapp.Discord
sudo flatpak install org.gimp.GIMP
sudo flatpak install org.vinegarhq.Vinegar
sudo flatpak install com.github.unrud.VideoDownloader
sudo flatpak install me.hyliu.fluentreader
sudo flatpak install com.heroicgameslauncher.hgl
sudo flatpak install com.github.eneshecan.WhatsAppForLinux
sudo flatpak install org.duckstation.DuckStation
#Clone the repository
git clone https://github.com/Twig6943/dotfiles
echo "Installation is done"
