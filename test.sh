#!/usr/bin/env bash
DEST=/usr/share/plymouth/themes/koenigsegg
sudo mkdir -p "$DEST"
sudo cp -r "$(dirname "$0")"/pieces "$(dirname "$0")"/koenigsegg.plymouth "$(dirname "$0")"/koenigsegg.script "$DEST/"
sudo plymouth-set-default-theme koenigsegg 2>/dev/null || true
sudo plymouthd --debug --debug-file=/tmp/plymouth.log
sudo plymouth --show-splash
sleep 12
sudo plymouth quit
