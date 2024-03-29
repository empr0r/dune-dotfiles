#!/bin/bash

# Check if ~/.config/neofetch directory exists, create it if not
if [ ! -d ~/.config/neofetch ]; then
    mkdir -p ~/.config/neofetch
fi

# Move Dune.colors to KDE color schemes directory
mv Dune.colors ~/.local/share/color-schemes/

# Move Dune.colorscheme to Konsole color schemes directory
mv Dune.colorscheme ~/.local/share/konsole/

# Move archlogo.txt and config.conf to Neofetch configuration directory
mv archlogo.txt ~/.config/neofetch/
mv config.conf ~/.config/neofetch/

echo "Installation complete!"
