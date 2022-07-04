#!/bin/bash
function verify_mount(){
    umount $HOME/.local/share/flatpak
        if [    $? -eq 32   ] ; then
            manage_repo
        else
            echo "monte o subvolume de usuário para flatpak, saindo com status de erro" &&
            exit 1
        fi
}
function manage_repo(){
    flatpak remote-delete flathub --system
    flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo --user
    flatpak remote-add flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo --user
    install_list
}
function install_list(){
install=($(cat flatpak.list))
total=$(cat flatpak.list | wc -l)
counter=0
while [ $total -gt $counter ] ; do
    flatpak install --user ${install[$counter]}
    let ++counter
done
}
verify_mount
