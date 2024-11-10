Dotfiles

This repository contains my personal dotfiles and configuration files for various applications and tools. These dotfiles are primarily designed for Arch Linux, but they may also be compatible with other Linux distributions.
Preview

I wouldn't reccomend this to begginers, because some things are probably broken in this repo. If you find out that i forgot to add/remove a dependency, please let me know and i will fix it.
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

Other Distributions

For other distributions, you can see dependencies in the dependencies.txt, or modify the archinstall.sh script

Fonts

If you do not use the Arch installation script, you will need to manually install fonts. Here are a few links to get you started:

https://github.com/Templarian/MaterialDesign-Font
https://fontesk.com/download/109644/?tmstv=1685689495

 Wallpaper

By default, swaybg (the wallpaper manager) will choose a random picture from the ~/Pictures/wallpaper directory. The installation script will download one wallpaper. You can add your own wallpapers and add them to ~/Pictures/wallpapers, or set swaybg to use only one pictures. You can modify swaybg in the hyprland.conf

You can change the wallpaper by modifying the exec-once statement in ~/.config/hypr/hyprland.conf to use a static picture or a different directory.
Keyboard Layout

The default keyboard layout is Swiss French. You can change it by modifying the kb_layout and kb_variant settings in ~/.config/hypr/hyprland.conf.

some mappings:


mainmod + m #starts vesktop (discord client)

mainmod + q #kills the active window

mainmod + y #starts kitty ($terminal)

mainmod + l # changes the wallpaper to a random one from ~/Pictures/wallpapers

mainmod + k # quits hyprland

mainmod + v # pick a line from clipboard history

mainmod + z # select an area to screenshot (copy to clipboard)

mainmod + r # application picker

mainmod + j # manage networks with iwmenu and rofi

Credits

For the Waybar configuration, I modified the configuration from the https://github.com/yorunoken/dotfiles repository.
For the Rofi configuration, I used the cattpuccin config:  https://github.com/catppuccin/rofi
(i love cattpuccin)


Disclaimer

This configuration has not been extensively tested, so if you encounter any issues or missing dependencies, please create a bug report or contact me.
