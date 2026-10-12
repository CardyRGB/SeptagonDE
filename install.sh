#!/bin/bash
echo "Starting the SeptagonDE installation in 3 seconds. Be ready for one or more sudo prompts."
sudo pacman -S --noconfirm noctalia kitty fish fastfetch brightnessctl playerctl xorg-server base-devel git
mkdir ./tmp
cd ./tmp
git clone https://aur.archlinux.org/mangowm-git.git
cd mangowm-git
makepkg --noconfirm -si
cd ..
cd ..
rm -rf ./tmp

# deploying stuff

# userspace first because i lterally siad user centered

sudo cp -r ./Remus-White /usr/share/icons/
cp -r ./mango ~/.config/
rm -rf ~/.config/fish
rm -rf ~/.config/kitty
cp -r ./fish ~/.config/
cp -r ./kitty ~/.config/
mkdir -p ~/.local/state
cp -r ./noctalia ~/.local/state/
cp ./septutorial.sh ~/.local

# global thing

sudo mkdir -p /usr/share/fonts/TTF
sudo mkdir -p /usr/share/backgrounds
sudo cp -r ./space-grotesk-ttf /usr/share/fonts/TTF/
sudo cp -r ./septagrounds /usr/share/backgrounds/

# config files for global thing so u arent copying dotfiles to other users 

sudo mkdir -p /etc/skel/.config
sudo mkdir -p /etc/skel/.local/state

sudo cp -r ./fish /etc/skel/.config/
sudo cp -r ./kitty /etc/skel/.config/
sudo cp -r ./mango /etc/skel/.config/
sudo cp -r ./noctalia /etc/skel/.local/state/

# tilapia

chsh -s /usr/bin/fish
echo "CHANGES MADE TO THE SYSTEM:"
echo " => Installed and changed shell to fish"
echo " => Packages installed:"
echo " BASE - MangoWM, Noctalia, Kitty, Fish, and xorg-server"
echo " REQUIREMENTS - base-devel and git"
echo " AESTHETICS - Remus-White cursor and Fastfetch"
echo " UTILITIES - Brightnessctl and Playerctl"
echo "Installation done. Log out and back into Mango, and then run septutorial in fish."
echo "=> z4inn, a UX critic"
echo "side note: SeptagonDE does NOT come with a greeter. if you're fine with it, launch mango from TTY, or install sddm or configure noctalia-greeter."
fish
