#!/bin/bash
echo "Starting the SeptagonDE installation in 3 seconds.. Install yay if you haven't. Be ready for a sudo prompt."
yay -S --noconfirm mangowm noctalia kitty
cp -r ./mango ~/.config/
mkdir -p ~/.local/state
cp -r ./noctalia ~/.local/state/
cp ./septutorial.sh ~/.local
sudo mkdir -p /usr/share/fonts/TTF
sudo mkdir -p /usr/share/backgrounds
sudo cp -r ./space-grotesk-ttf /usr/share/fonts/TTF/
sudo cp -r ./septagrounds /usr/share/backgrounds/
sudo rm -f /usr/share/wayland-sessions/mango.desktop
sudo cp ./mango.desktop /usr/share/wayland-sessions
echo "Installation done. Run 'bash ~/.local/septutorial.sh' for a basic guide."
echo "=> z4inn, a UX critic"
echo "side note: SeptagonDE does NOT come with a greeter. if you're fine with it, launch mango from TTY, or install sddm or configure noctalia-greeter."
