Dotfiles

This repository contains my personal dotfiles and configuration files for various applications and tools. These dotfiles are designed to work with Arch Linux, but they may also be compatible with other Linux distributions.
Installation

For Arch Linux users, you can use the provided installation script:

```
curl https://raw.githubusercontent.com/AQMpolyface/dotfiles/refs/heads/master/archinstall.sh > archinstall.sh
chmod +x archinstall.sh
./archinstall.sh
```
For open suse, you can use the owopensuse.sh script
```
curl https://raw.githubusercontent.com/AQMpolyface/dotfiles/refs/heads/master/owopensuse.sh > owopensuse.sh
chmod +x owopensuse.sh
./owopensuse.sh
```
For other distr, you can easely modify the owopensuse.sh
Customization

the wallpaper isnt included. you can find it here: https://polyface.ch/images/wallpaper/1317094.png

*Warning* you *need* to change the path of the pictures at the botom of waybar/style.css, for the logo. The file only allows complete path (eg: /home/user/uwu.png). If you dont you wont have a logo.

You can safely delete the aliases in the .zshrc file or set your own aliases.

Wallpaper

By default, swaybg (the wallpaper manager) will choose a random picture from the ~/Pictures/wallpaper directory. The installation script will download one wallpaper. You can add your own wallpapers and add them to ~/Pictures/wallpapers, or set swaybg to use only one pictures. You can modify swaybg in the hyprland.conf

You can change the wallpaper by modifying the exec-once statement in ~/.config/hypr/hyprland.conf to use a static picture or a different directory.
Keyboard Layout

The default keyboard layout is Swiss French. You can change it by modifying the kb_layout and kb_variant settings in ~/.config/hypr/hyprland.conf.

Credits

For the Wofi configuration, I used the awesome-wofi repository.
    For the Waybar configuration, I modified the configuration from the yorunoken/dotfiles repository.

Disclaimer

This configuration has not been extensively tested, so if you encounter any issues or missing dependencies, please create a bug report or contact me.
