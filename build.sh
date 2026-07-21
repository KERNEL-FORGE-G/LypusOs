#!/usr/bin/env bash
# Script d'assistance de construction de l'ISO LypusOS

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROFILE_DIR="$SCRIPT_DIR/profile"
WORK_DIR="$SCRIPT_DIR/work"
OUT_DIR="$SCRIPT_DIR/out"

echo "=== LypusOS - Build System ==="

if [ "$EUID" -ne 0 ]; then
    echo "Erreur: Ce script doit être exécuté en tant que root (sudo ./build.sh)."
    exit 1
fi

if ! command -v mkarchiso &> /dev/null; then
    echo "Erreur: 'archiso' n'est pas installé sur votre système host."
    echo "Installez-le avec: sudo pacman -S archiso"
    exit 1
fi

echo "[1/3] Nettoyage des dossiers de travail..."
rm -rf "$WORK_DIR"
mkdir -p "$OUT_DIR"

echo "[2/3] Préparation des scripts YAY..."
chmod +x "$PROFILE_DIR/airootfs/usr/local/bin/setup-yay.sh"

echo "[3/3] Lancement de la compilation d'ISO avec mkarchiso..."
mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" "$PROFILE_DIR"

echo "=== Compilation terminée avec succès ! ==="
echo "Votre ISO LypusOS est disponible dans : $OUT_DIR"
