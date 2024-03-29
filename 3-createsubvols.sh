#!/bin/bash
root_dir=$(mktemp -d -p /tmp)
block_device_root=$(grub-probe / --target=device)
function create(){
mount $block_device_root -o "subvolid="5 $root_dir &&
btrfs su cr $root_dir/@cache
btrfs su cr $root_dir/@log
read -p "owner:group home dirs: " perm
for i in @flatpak @Docker @Podman @fonts @home @Documents @Pictures @Music @Videos @Downloads @VMs; do
	btrfs su cr $root_dir/$i
	chown -R $perm $root_dir/$i
done
chattr +C $root_dir/@VMs
}
create
