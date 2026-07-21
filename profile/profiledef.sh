#!/usr/bin/env bash
# profiledef.sh - Définition de l'ISO LypusOS

iso_name="lypusos"
iso_label="LYPUSOS_$(date +%Y%m)"
iso_publisher="LypusOS Project"
iso_application="LypusOS Live/Install CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-x86_64.grub.esp' 'uefi-x86_64.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
  ["/usr/local/bin/setup-yay.sh"]="0:0:0755"
  ["/usr/local/bin/lypus-welcome"]="0:0:0755"
)
