#!/bin/bash
echo "Starting the SeptagonDE (with reccomended software) installation in 3 seconds. Be ready for one or more sudo prompts."
sudo pacman -S --noconfirm firefox nautilus gnome-text-editor noctalia kitty fish fastfetch brightnessctl pipewire playerctl xorg-server base-devel git libnotify
mkdir ./tmp
cd ./tmp
git clone https://aur.archlinux.org/mangowm-git.git
cd mangowm-git
makepkg --noconfirm -si
cd ..
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg --noconfirm -si
cd ..
cd ..
rm -rf ./tmp

# deploying stuff

# userspace first because i lterally siad user centered

sudo cp -r ./Remus-White /usr/share/icons/
cp -r ./mango ~/.config/
rm -rf ~/.config/fish
cp -r ./fish ~/.config/
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

sudo cp -r ./cosmic /etc/skel/.config/
sudo cp -r ./fish /etc/skel/.config/
sudo cp -r ./mango /etc/skel/.config/
sudo cp -r ./noctalia /etc/skel/.local/state/

# tilapia

chsh -s /usr/bin/fish
echo "CHANGES MADE TO THE SYSTEM:"
echo " => Installed and changed shell to fish"
echo " => Packages installed:"
echo " BASE - MangoWM, Noctalia, COSMIC Terminal, Fish, and xorg-server"
echo " REQUIREMENTS - cosmic-settings (hidden), base-devel and git"
echo " AESTHETICS - Remus-White cursor and Fastfetch"
echo " UTILITIES - Pipewire, Brightnessctl and Playerctl"
echo " ADDITIONAL - Firefox, COSMIC Files, COSMIC Text Editor, GTK Settings"
echo "Installation done. Log out and back into Mango, and then run septutorial in fish."
echo "=> z4inn, a UX critic"
echo "side note: SeptagonDE does NOT come with a greeter. if you're fine with it, launch mango from TTY, or install sddm or configure noctalia-greeter."
fish
