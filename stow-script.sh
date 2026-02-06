#!/bin/bash

# Configuration
DOTFILES_DIR="$HOME/dotfiles2"
APPS=("hypr" "waybar")

# Ensure we are in the dotfiles directory
cd "$DOTFILES_DIR" || exit

for app in "${APPS[@]}"; do
  echo "Stowing $app..."
  # -R: recursive
  # -t: target directory (default is parent of current, which is $HOME)
  stow -R "$app"
done

echo "Done!"