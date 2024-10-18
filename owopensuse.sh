#!/bin/bash


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

sudo zypper in nwg-look xdg-desktop-portal-hyprland wl-clipboard qt6-wayland libqt5-qtwayland  polkit-kde-agent wireplumber pipewire mako sddm networkmanager swaybg  kitty wofi waybar libnotify hyprpicker scdoc slurp zsh clipman

cd /tmp

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

mkdir -p ~/.config/zsh

mv zsh-syntax-highlighting ~/.config/zsh


curl -s https://ohmyposh.dev/install.sh | bash -s


sudo rpm --import https://rpm.librewolf.net/pubkey.gpg

sudo zypper ar -ef https://rpm.librewolf.net librewolf

sudo zypper ref

sudo zypper in librewolf


git clone https://github.com/hyprwm/contrib.git

cd contrib/grimblast

sudo mv grimblast /usr/bin


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



