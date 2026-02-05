APPS=("nvim" "waybar" "wofi" "kitty" "fish" "btop" "fastfetch" "zellij" "starship.toml")

for app in "${APPS[@]}"; do
  mkdir -p ~/dotfiles/"$app"/.config
  [ -e ~/.config/"$app" ] && mv ~/.config/"$app" ~/dotfiles/"$app"/.config/
  stow "$app"
done
