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
remote=($(cat flatpak.list | cut -f1))          ### double (()) to bash array
application=($(cat flatpak.list | cut -f2))     ### double (()) to bash array
total=$(cat flatpak.list | wc -l)               ### generate list using "flatpak list --app --columns=origin,application > flatpak.list"
counter=0  
while [ $total -gt $counter ] ; do
    flatpak install ${remote[$counter]} --user ${application[$counter]} -y
    let ++counter
done
}
verify_mount
