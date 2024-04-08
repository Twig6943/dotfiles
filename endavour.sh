echo "Cancel the script if u want u have 5 seconds"
sleep 5
#Pacman
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
sudo pacman -S steam
sudo pacman -S wine
sudo pacman -S winetricks
sudo pacman -S speedtest-cli
sudo pacman -S htop
sudo pacman -S cmatrix
sudo pacman -S goverlay
#Yay
yay -S cava --noconfirm
yay -S appimagelauncher --noconfirm
yay -S grimshot-bin-sway --noconfirm
#Flatpak
sudo flatpak install io.github.spacingbat3.webcord
sudo flatpak install com.discordapp.Discord
sudo flatpak install org.gimp.GIMP
#Clone dotfiles
git clone https://github.com/Twig6943/dotfiles/
echo "Installation is done"
