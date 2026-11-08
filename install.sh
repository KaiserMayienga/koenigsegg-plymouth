#!/usr/bin/env bash
set -e
DEST=/usr/share/plymouth/themes/koenigsegg
HERE="$(cd "$(dirname "$0")" && pwd)"
sudo rm -rf "$DEST"
sudo mkdir -p "$DEST"
sudo cp -r "$HERE/pieces" "$HERE/koenigsegg.plymouth" "$HERE/koenigsegg.script" "$DEST/"
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth \
  default.plymouth "$DEST/koenigsegg.plymouth" 200
sudo update-alternatives --set default.plymouth "$DEST/koenigsegg.plymouth"
echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash >/dev/null
sudo update-initramfs -u
echo "Done. Reboot to see it."
