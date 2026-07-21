#!/usr/bin/env bash
# Script d'installation et de compilation automatique de YAY dans la session Live/Build

set -e

YAY_DIR="/tmp/yay-build"

if command -v yay &> /dev/null; then
    echo "yay est déjà installé."
    exit 0
fi

echo "Compilation et installation de yay helper..."
mkdir -p "$YAY_DIR"
git clone https://aur.archlinux.org/yay-bin.git "$YAY_DIR/yay-bin"

# Ajustement des permissions pour compiler sans être directement root absolu
chown -R nobody:nobody "$YAY_DIR"
cd "$YAY_DIR/yay-bin"

# Installation du binaire yay-bin
su -s /bin/bash nobody -c "makepkg -s --noconfirm"
pacman -U --noconfirm "$YAY_DIR/yay-bin"/yay-bin-*.pkg.tar.zst

rm -rf "$YAY_DIR"
echo "yay installé avec succès sur LypusOS !"
