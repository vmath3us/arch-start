#!/bin/bash
root_dir=$(mktemp -d -p /tmp)
default_root="@base_system"
block_device_root=$(grub-probe / --target=device) #######################or insert here, into quotes
mount $block_device_root $default_root -o "subvolid="5 &&
btrfs su cr $default_root/@home &&\
btrfs su cr $default_root/@flatpak &&\
btrfs su cr $default_root/@Docker &&\
btrfs su cr $default_root/@Podman &&\
btrfs su cr $default_root/@Documents &&\
btrfs su cr $default_root/@Images &&\
btrfs su cr $default_root/@Musics &&\
btrfs su cr $default_root/@Videos &&\
btrfs su cr $default_root/@Downloads &&\
read -p "name:group owner home folders: " setperm
chown -R $setperm $default_root/* &&\
btrfs su cr $default_root/@cache &&\
btrfs su cr $default_root/@log &&\
btrfs filesystem sync $default_root &&\
exit 0
