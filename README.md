# Koenigsegg Plymouth boot animation

A Plymouth boot splash. A monochrome Koenigsegg shield condenses once from 20 separate pieces, a light wipe runs across it, and the logo then holds until the login screen appears.

![preview](preview.gif)

## Install (Ubuntu and derivatives using initramfs-tools)

    git clone https://github.com/KaiserMayienga/koenigsegg-plymouth.git
    cd koenigsegg-plymouth
    bash install.sh
    sudo reboot

Requires the `plymouth` package and `quiet splash` in `GRUB_CMDLINE_LINUX_DEFAULT`.
To preview without rebooting, switch to a TTY (Ctrl+Alt+F3), log in, and run `bash test.sh`.

## Notes

- Encrypted disks: the LUKS password prompt is not handled yet.
- Plymouth counts frames, not seconds, so speed depends on your graphics hardware.
- Koenigsegg and its logo are trademarks of Koenigsegg Automotive AB. This is an unofficial fan project, not affiliated with or endorsed by the company.
