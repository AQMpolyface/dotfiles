#!/bin/bash

which paru

if [ $? -ne 0 ]; then
cd /tmp
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
fi


echo "want to make a backup of previous config of wofi, fastfetch, hyprland, waybar and .zshrc?"
echo "if yes, they will be saved under ~/.config/backup"
read -p "Do you want to save backup? (y/n): " yn

if [[ $yn =~ ^[Yy]$ ]]; then
    mkdir -p ~/.config/backup
    cp -r ~/.config/waybar ~/.config/backup
    cp -r ~/.config/wofi ~/.config/backup
    cp -r ~/.config/fastfetch ~/.config/backup
    cp -r ~/.config/hypr ~/.config/backup
    cp -r ~/.zsh ~/.config/backup/zshrc.bak
    echo "done. Starting to install dependencies.."

elif [[ $yn =~ ^[Nn]$ ]]; then
    echo "You chose no.Starting to install dependencies..."
else
    echo "Invalid input. Please enter 'y' or 'n'."
    return 69
fi

paru -S zsh-syntax-highlighting slurp  scdoc hyprpicker libnotify waybar wofi kitty hyprland swaybg zsh networkmanager wl-clipboard ttf-material-design-icons ttf-0xproto-nerd sddm mako pipewire wireplumber polkit-kde-agent qt5-wayland qt6-wayland xdg-desktop-portal-hyprland xorg-wayland nwg-look git
paru -S oh-my-posh 
paru -S librewolf-bin 
paru -S clipman
paru -S grimblast



mkdir -p ~/Pictures/wallpapers
cd ~/Pictures/wallpapers
wget https://polyface.ch/images/wallpaper/anime-girl-alone-cat-night-sky-stars-city-scenery-ai-4k-wallpaper-uhdpaper.com-743@1@l.jpg


mkdir -p ~/.config/oh-my-posh
curl https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/catppuccin_mocha.omp.json > ~/.config/oh-my-posh/catppuccin_mocha.omp.json

cd /tmp
rm -rf dotfiles
git clone https://github.com/AQMpolyface/dotfiles.git

rm -rf ~/.config/wofi ~/.config/waybar ~/.config/hypr ~/.config/fastfetch ~/.zshrc
cd dotfiles
mv waybar/logo.png /usr/share
cp -r wofi ~/.config/
cp -r waybar ~/.config/
cp -r fastfetch ~/.config/
cp -r hypr ~/.config
cp .zshrc ~

echo "done. you can restart to hyprland and see if it works correctly"



