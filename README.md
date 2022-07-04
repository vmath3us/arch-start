1. mkfs.btrfs --checksum xxhash $block-device-root
2. mount $block-device-root $mount-point-toplevel-btrfs
3. btrfs su cr $mount-point-toplevel-btrfs/@pacstrap
4. mount $block-device-root subvol=@pacstrap $mount-point-pacstrap
6. pacstrap $mount-point-pacstrap (using 1-packagelist.pacman into subshell DOLAR(curl https://raw.githubusercontent.com/vmath3us/arch-start/main/1-packagelist.pacman))
7. chroot $mount-point-pacstrap

into chroot, do:
1. passwd
2. locale-gen
3. localtime link
4. git clone https://github.com/vmath3us/stateless-arch.git
5. run install-stateless-arch-tools.sh and follow instructions
6. reboot
7. clone this repo
