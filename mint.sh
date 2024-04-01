#this script is wip af
sudo apt install git gnome kitty cava steam speedtest pipewire wireplumber winetricks
git clone https://github.com/Twig6943/dotfiles
sudo flatpak install dev.vencord.Vesktop
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.8.10/fastfetch-linux-amd64.deb
sudo dpkg -i fastfetch-linux-amd64.deb
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
cd /home/$USER/
git clone https://github.com/Twig6943/MangoHudandGoverlayInstaller
