echo "Cancel the script if u want u have 5 seconds"
#this script is wip af
#Apps I use: balena,fluent reader,mpv,photogimp,qbittorrent,thorium,vscodium,walc
sudo apt install git gnome kitty cava steam speedtest pipewire wireplumber winetricks
#sudo flatpak install
git clone https://github.com/Twig6943/dotfiles
sudo flatpak install dev.vencord.Vesktop
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.8.10/fastfetch-linux-amd64.deb
sudo dpkg -i fastfetch-linux-amd64.deb
sudo rm fastfetch-linux-amd64.deb
#Playit
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
sudo apt update
sudo apt install playit
#Wine
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt install --install-recommends winehq-stable
#MangohudGoverlay
cd /home/$USER/Downloads
git clone https://github.com/Twig6943/MangoHudandGoverlayInstaller
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/desktopfile.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/uninstalldesktopfile.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/uninstall.sh /home/$USER/Downloads
/home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh
echo "Installation is done"
