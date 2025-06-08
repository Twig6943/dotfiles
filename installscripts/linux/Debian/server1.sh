echo ""

read -n 1 -s

sleep 10

#Install flatpak & disk util

#Install Soar
curl -fsSL "https://raw.githubusercontent.com/pkgforge/soar/main/install.sh" | sh
soar defconfig --external

#Rebos
soar install rebos#gitlab.com.Oglo12.rebos:bincache
rebos setup
rebos config init

#Clone dotfiles
cd /home/$USER
git clone https://github.com/Twig6943/dotfiles

echo "Installation is done"
sleep 5
