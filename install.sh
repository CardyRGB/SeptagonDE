#!/bin/bash
echo "Starting the SeptagonDE installation in 3 seconds.. Install yay if you haven't. Be ready for a sudo prompt. If packages are already installed and you only need dotfiles, run copydots.sh."
yay -S --noconfirm mangowm noctalia kitty fish fastfetch brightnessctl playerctl 

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
echo "Installation done. Run 'bash ~/.local/septutorial.sh' for a basic guide."
echo "=> z4inn, a UX critic"
echo "side note: SeptagonDE does NOT come with a greeter. if you're fine with it, launch mango from TTY, or install sddm or configure noctalia-greeter."
