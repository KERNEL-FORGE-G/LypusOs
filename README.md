<div align="center">

# 🌌 LypusOS

**Une distribution Linux moderne, fluide et élégante basée sur Arch Linux avec Hyprland par défaut.**

*Développé par le groupe **KERNEL FORGE***

[![Build LypusOS ISO](https://github.com/KERNEL-FORGE-G/LypusOs/actions/workflows/build-iso.yml/badge.svg)](https://github.com/KERNEL-FORGE-G/LypusOs/actions/workflows/build-iso.yml)
[![Arch Linux](https://img.shields.io/badge/Base-Arch%20Linux-blue?logo=arch-linux)](https://archlinux.org)
[![Hyprland](https://img.shields.io/badge/WM-Hyprland-00b4d8?logo=wayland)](https://hyprland.org)
[![AUR Helper](https://img.shields.io/badge/AUR-yay-cyan)](https://github.com/Jguer/yay)

---

</div>

## 📖 À propos de LypusOS

**LypusOS** est une distribution Linux légère et hautement personnalisée conçue par **KERNEL FORGE**. Elle offre la puissance et la flexibilité d'Arch Linux couplées à l'expérience visuelle hors du commun du compositeur Wayland **Hyprland**.

L'objectif de LypusOS est de fournir un environnement de travail pré-configuré, esthétique et prêt à l'emploi (out-of-the-box) intégrant le support complet de l'AUR via **`yay`**.

---

## ✨ Fonctionnalités Principales

- **Base Arch Linux** : Système rolling release toujours à jour et ultra performant.
- **Environnement Hyprland** : Compositeur Wayland avec animations fluides, flou dynamique et gestion en tuiles (tiling).
- **Intégration de YAY** : Helper AUR pré-installé et configuré pour un accès direct aux paquets communautaires.
- **Barre & Notifications** : **Waybar** personnalisée et **SwayNC** pour les notifications.
- **Terminal & Outils** : **Kitty**, **Rofi-Wayland** (lanceur), **Thunar** (gestionnaire de fichiers).
- **Audio & Réseau** : Serveur audio moderne **PipeWire** et **NetworkManager**.

---

## 🛠️ Contenu de l'ISO / Architecture du Profil

```text
LypusOs/
├── .github/workflows/
│   └── build-iso.yml        # CI/CD GitHub Actions pour builder l'ISO
├── profile/                 # Profil personnalisé Archiso
│   ├── profiledef.sh        # Métadonnées et permissions du profil Archiso
│   ├── packages.x86_64      # Paquets officiels inclus dans l'ISO
│   ├── pacman.conf          # Configuration Pacman (support multilib)
│   └── airootfs/            # Arborescence système pré-configurée
│       ├── etc/skel/.config # Dotfiles par défaut (Hyprland, Waybar, Kitty, Rofi)
│       └── usr/local/bin/   # Scripts d'installation (setup-yay.sh)
└── build.sh                 # Script de compilation local (mkarchiso)
```

---

## 🚀 Génération de l'ISO en Local

### Prérequis

Assurez-vous de travailler sur un système Arch Linux (ou dérivé) avec le paquet `archiso` installé :

```bash
sudo pacman -S archiso git
```

### Compilation

1. Clonez le dépôt :
   ```bash
   git clone https://github.com/KERNEL-FORGE-G/LypusOs.git
   cd LypusOs
   ```

2. Lancez le script de construction en mode superutilisateur :
   ```bash
   sudo ./build.sh
   ```

3. L'ISO générée sera disponible dans le dossier `out/` :
   ```bash
   ls -la out/
   ```

---

## ⚙️ Automatisation CI/CD (GitHub Actions)

LypusOS utilise **GitHub Actions** pour compiler automatiquement l'ISO à chaque push sur la branche principale (`main`/`master`) ou lors de la publication d'un nouveau Tag de version (`v*`).

- Les ISOs compilées sont disponibles dans les **Artifacts** de chaque build sur GitHub Actions.
- Les releases tagguées créent automatiquement une **Release GitHub** avec le fichier `.iso` téléchargeable.

---

## 👥 À propos de KERNEL FORGE

**KERNEL FORGE** est un groupe de passionnés et d'ingénieurs open-source dédiés à la création d'outils, de distributions et de composants systèmes modernes.

- **GitHub** : [@KERNEL-FORGE-G](https://github.com/KERNEL-FORGE-G)

---

## 📄 Licence

Ce projet est distribué sous la licence [MIT](LICENSE).
