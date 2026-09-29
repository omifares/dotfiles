#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

log_info()  { echo -e "\033[0;34m[INFO]\033[0m $1"; }
log_succ()  { echo -e "\033[0;32m[OK]\033[0m $1"; }
log_err()   { echo -e "\033[0;31m[ERROR]\033[0m $1"; }

if [[ "$EUID" -eq 0 ]]; then
  log_err "Do not run as root."
  exit 1
fi

log_info "Update & Upgrade system packages..."
sudo apt update && sudo apt upgrade -y
log_info "Installing build dependencies..."
sudo apt install -y build-essential curl git stow fish

# Instalando pacotes da lista
if [[ -f "$DOTFILES_DIR/packages/apt-packages.txt" ]]; then
  log_info "APT Installing package list..."
  grep -v -E '^\s*#|^\s*$' "$DOTFILES_DIR/packages/apt-packages.txt" | xargs sudo apt install -y
fi

# Alterando shell para Fish
if command -v fish &> /dev/null && [[ "$SHELL" != "$(which fish)" ]]; then
  log_info "Setting Fish as default shell..."
  chsh -s "$(which fish)"
fi

# Linkando dotfiles com Stow
log_info "Linking dotfiles to $HOME..."
cd "$DOTFILES_DIR"

for item in *; do
  if [[ -d "$item" && "$item" != "packages" ]]; then
    log_info "stowing: $item"
    stow -R -t "$HOME" "$item"
  fi
done

log_succ "Setup finished!"
read -p "Do wanna reboot now? (s/N): " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Ss]$ ]]; then
  sudo reboot
fi
