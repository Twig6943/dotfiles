echo "Cancel the script if u want u have 5 seconds"
sleep 5
sudo pacman -Syu
sudo pacman -S kitty
sudo pacman -S fastfetch
sudo pacman -S hyprland
sudo pacman -S wofi
sudo pacman -S pavucontrol
sudo pacman -S yay
sudo pacman -S flatpak
sudo pacman -S lxappearance
sudo pacman -S thunar
sudo pacman -S playerctl
sudo pacman -S waybar
yay -S cava --noconfirm
yay -S appimagelauncher --noconfirm
#MangohudGoverlay
cd /home/$USER/Downloads
git clone https://github.com/Twig6943/MangoHudandGoverlayInstaller
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/desktopfile.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/uninstalldesktopfile.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh /home/$USER/Downloads
sudo cp /home/$USER/Downloads/MangoHudandGoverlayInstaller/uninstall.sh /home/$USER/Downloads
/home/$USER/Downloads/MangoHudandGoverlayInstaller/install.sh
echo "Installation is done"
