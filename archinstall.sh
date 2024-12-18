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
    cp -r ~/.zshrc ~/.config/backup/zshrc.bak
    cp -r  ~/.config/zsh ~/.config/backup
    cp -r ~/.config/mako/ ~/.config/backup
    cp -r ~/.config/rofi/ ~/.config/backup
    cp -r /.config/kitty ~/.config/backup
    echo "done. Starting to install dependencies.."

elif [[ $yn =~ ^[Nn]$ ]]; then
    echo "You chose no.Starting to install dependencies..."
else
    echo "Invalid input. Please enter 'y' or 'n'."
    return 69
fi

paru -S zsh-syntax-highlighting slurp  scdoc hyprpicker libnotify waybar wofi kitty hyprland swaybg zsh networkmanager wl-clipboard ttf-material-design-icons ttf-0xproto-nerd sddm mako pipewire wireplumber polkit-kde-agent qt5-wayland qt6-wayland xdg-desktop-portal-hyprland xorg-wayland nwg-look git swayidle hyprlock rofi
paru -S oh-my-posh 
paru -S librewolf-bin 
paru -S clipman
paru -S grimblast
paru -S iwmenu-git



#oh my zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


mkdir -p ~/.config/oh-my-posh
curl https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/catppuccin_mocha.omp.json > ~/.config/oh-my-posh/catppuccin_mocha.omp.json

cd /tmp
rm -rf dotfiles
git clone https://github.com/AQMpolyface/dotfiles.git

rm -rf ~/.config/wofi ~/.config/waybar ~/.config/hypr ~/.config/fastfetch ~/.zshrc ~/.config/rofi ~/.config/kitty
cd dotfiles
echo "need sudo to move logo to /usr/share"
sudo mv waybar/logo.png /usr/share

cp -r rofi  ~/.config/rofi/
cp -r wofi ~/.config/
cp -r waybar ~/.config/
cp -r fastfetch ~/.config/
cp -r hypr ~/.config/
cp .zshrc ~
cp -r zsh ~/.config/
cp -r mako ~/.config/
cp -r kitty ~/.config/
echo "done. you can restart to hyprland and see if it works correctly"



