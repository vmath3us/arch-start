1. mkfs.btrfs --checksum xxhash $block-device-root
2. mount $block-device-root $mount-point-toplevel-btrfs
3. btrfs su cr $mount-point-toplevel-btrfs/@pacstrap
4. mount $block-device-root -o subvol=@pacstrap,compress-force=zstd $mount-point-pacstrap
6. pacstrap -c $mount-point-pacstrap
    $(curl https://raw.githubusercontent.com/vmath3us/arch-start/main/1.1-packagelist-not-devel.pacman)
7. chroot $mount-point-pacstrap

into chroot, do:
1. passwd
2. locale-gen
3. localtime link
4. git clone https://github.com/vmath3us/stateless-arch.git
5. run install-stateless-arch-tools.sh and follow instructions
6. reboot
7. clone this repo
8. follow the trail
