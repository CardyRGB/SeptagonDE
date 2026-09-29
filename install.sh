#!/bin/bash

echo "If you haven't installed yay already, please do. Starting install in 3 seconds. Be ready for any sudo authentication prompts."
sleep 3
cp -r ./mango ~/.config/
echo "Copied mango configuration."
cp -r ./noctalia ~/.local/state/
echo "Copied Noctalia configuration."
sudo mkdir -p /usr/share/fonts/TTF
sudo cp -r ./space-grotesk-ttf /usr/share/fonts/TTF/
echo "Copied font Space Grotesk and its license."
sudo mkdir -p /usr/share/backgrounds
sudo cp -r ./septagrounds /usr/share/backgrounds/
echo "Copied wallpaper."
sudo cp -r ./septassets /usr/share/
yay -S --noconfirm mangowc noctalia noctalia-greeter numix-circle-icon-theme kitty
sudo rm -f /etc/greetd/config.toml
rm -rf ~/.config/gtk-*
cp -r ./gtk-3.0 ~/.config/
cp -r ./gtk-4.0 ~/.config/
cp ./septutorial.sh ~/.local/
chmod +x ~/.local/septutorial.sh
sudo cp config.toml /etc/greetd/
echo "Installed the Septagon Desktop Environment! Use the command 'bash ~/.local/septutorial.sh' to get a start."
echo "To enable noctalia-greeter, disable your current display manager and enable greetd."
echo "=> z4inn - UX critic trying to make good UX"
