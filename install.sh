#!/bin/bash

# Dotfiles directory
DOTFILES_DIR="$HOME/dotfiles"

# List of dotfiles to symlink
DOTFILES=(
    ".config/neofetch/archlogo.txt"
    ".config/neofetch/config.conf"
)

# List of additional files to symlink
ADDITIONAL_FILES=(
    ".local/share/color-schemes/Dune.colors"
    ".local/share/konsole/Dune.colorscheme"
)

# Symlink each dotfile to the home directory
for file in "${DOTFILES[@]}"; do
    ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
done

# Symlink additional files
for file in "${ADDITIONAL_FILES[@]}"; do
    mkdir -p "$(dirname "$HOME/$file")"
    ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
done

echo "Dotfiles installation completed."
