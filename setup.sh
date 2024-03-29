#!/bin/bash

# critical software for hyprland: 
# xdg-desktop-portal-hyprland for desktop portal
# polkit-kde-agent for authentication agent
# qt5-wayland and qt6-wayland for qt wayland support

sudo pacman -S hyprland xdg-desktop-portal-hyprland polkit-kde-agent qt5-wayland qt6-wayland hyprpaper waybar alacritty flatpak brightnessctl vim github-cli swayidle swaylock ttf-freefont ttf-liberation tlp mako feh flameshot mousepad pavucontrol pulseaudio wofi
sudo flatpak install codium librewolf 

# configure fonts
sudo cp ./etc/fonts/* /usr/share/fonts/
fc-cache -fv

mkdir ~/.config
# configure hypr
mkdir ~/.config/hypr
rm ~/.config/hypr/hyprland.conf
ln -s ~/dots/hyprland-config ~/.config/hypr/hyprland.conf
ln -s ~/dots/hyprpaper-config ~/.config/hypr/hyprpaper.conf
# configure waybar
mkdir ~/.config/waybar
ln -s ~/dots/waybar-config ~/.config/waybar/config
ln -s ~/dots/waybar-style ~/.config/waybar/style.css
# configure alacritty
ln -s ~/dots/alacritty-config ~/.alacritty.toml
# echo "alias split='alacritty --working-directory $(pwd) & disown'" >> ~/.bashrc
# configure codium
rm /home/endulum/.var/app/com.vscodium.codium/config/VSCodium/User/settings.json
ln -s ~/dots/vscode-config /home/endulum/.var/app/com.vscodium.codium/config/VSCodium/User/settings.json
# configure bashrc
rm ~/.bashrc
ln -s ~/dots/bash-config ~/.bashrc
