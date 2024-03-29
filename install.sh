#!/bin/bash

# Check if ~/.local/share/color-schemes directory exists, create it if not
if [ ! -d ~/.local/share/color-schemes ]; then
    mkdir -p ~/.local/share/color-schemes
fi

# Move Dune.colors to KDE color schemes directory
mv Dune.colors ~/.local/share/color-schemes/

# Check if ~/.local/share/konsole directory exists, create it if not
if [ ! -d ~/.local/share/konsole ]; then
    mkdir -p ~/.local/share/konsole
fi

# Move Dune.colorscheme to Konsole color schemes directory
mv Dune.colorscheme ~/.local/share/konsole/

# Check if ~/.config/neofetch directory exists, create it if not
if [ ! -d ~/.config/neofetch ]; then
    mkdir -p ~/.config/neofetch
fi

# Move archlogo.txt and config.conf to Neofetch configuration directory
mv archlogo.txt ~/.config/neofetch/
mv config.conf ~/.config/neofetch/

# Check if wallpaper directory exists, create it if not
if [ ! -d ~/.local/share/wallpapers ]; then
    mkdir -p ~/.local/share/wallpapers
fi

# Move 1174531.jpg to wallpaper directory
mv wallpaper.jpg ~/.local/share/wallpapers/

echo "Installation complete!"
