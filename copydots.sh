#!/bin/bash
cp -r ./mango ~/.config/
rm -rf ~/.config/fish
rm -rf ~/.config/kitty
cp -r ./fish ~/.config/
cp -r ./kitty ~/.config/
mkdir -p ~/.local/state
cp -r ./noctalia ~/.local/state/
cp ./septutorial.sh ~/.local
sudo mkdir -p /usr/share/fonts/TTF
sudo mkdir -p /usr/share/backgrounds
sudo cp -r ./space-grotesk-ttf /usr/share/fonts/TTF/
sudo cp -r ./septagrounds /usr/share/backgrounds/
sudo rm -f /usr/share/wayland-sessions/mango.desktop
sudo cp ./mango.desktop /usr/share/wayland-sessions
