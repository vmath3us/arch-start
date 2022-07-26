#!/bin/bash
function no-devel(){
execute=$(pacman -Qqe | grep -Ev "$(pacman -Qqm)" | grep -Ev "$(pacman -Qg base-devel | cut -d " " -f2)" > 1.1-packagelist-not-devel.pacman) &&
    git commit -am "ArchGnome Workstation list explicit, no base-devel" &&
    git push
}
function list-package(){
    pacman -Qqe | grep -Ev "$(pacman -Qqm)" > 1-packagelist.pacman
    git commit -am "ArchGnome Workstation list explicit" &&
    git push &&
    no-devel
}
list-package


