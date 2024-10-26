Dotfiles

This repository contains my personal dotfiles and configuration files for various applications and tools. These dotfiles are primarily designed for Arch Linux, but they may also be compatible with other Linux distributions.
Preview

Here’s a glimpse of how the setup looks:

Dotfiles Overview
Waybar Configuration
Installation
Arch Linux

For Arch Linux users, you can use the provided installation script:

bash

```
curl https://raw.githubusercontent.com/AQMpolyface/dotfiles/refs/heads/master/archinstall.sh -o archinstall.sh
chmod +x archinstall.sh
./archinstall.sh
```
openSUSE

For openSUSE users, you can use the owopensuse.sh script:

bash
```
curl https://raw.githubusercontent.com/AQMpolyface/dotfiles/refs/heads/master/owopensuse.sh -o owopensuse.sh
chmod +x owopensuse.sh
./owopensuse.sh
```
Note: The owopensuse.sh script has not been extensively tested. Please use it with caution.
Other Distributions

For other distributions, you can easily modify the owopensuse.sh script to suit your needs.
Fonts

If you do not use the Arch installation script, you will need to manually install fonts. Here are a few links to get you started:

    https://github.com/Templarian/MaterialDesign-Font
https://fontesk.com/download/109644/?tmstv=1685689495
    
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
