#!/bin/bash

# critical software for hyprland: 
# xdg-desktop-portal-hyprland for desktop portal
# polkit-kde-agent for authentication agent
# qt5-wayland and qt6-wayland for qt wayland support

sudo pacman -S hyprland xdg-desktop-portal-hyprland polkit-kde-agent qt5-wayland qt6-wayland hyprpaper waybar alacritty flatpak
sudo flatpak install codium librewolf 

# configure fonts
sudo cp ./etc/fonts/* /usr/share/fonts/
fc-cache -fv

mkdir ~/.config
# configure hypr
mkdir ~/.config/hypr
ln -s ./hyprland-config ~/.config/hypr/hyprland.conf
ln -s ./hyprpaper-config ~/.config/hypr/hyprpaper.conf
# configure waybar
mkdir ~/.config/waybar
ln -s ./waybar-config ~/.config/waybar/config
ln -s ./waybar-style ~/.config/waybar/style.css
# configure alacritty
ln -s ./alacritty-config ~/.alacritty.yml
echo "alias split='alacritty --working-directory $(pwd) & disown'" >> ~/.bashrc
# configure codium
ln -s ./vscode-config /home/endulum/.var/app/com.vscodium.codium/config/VSCodium/User/settings.json