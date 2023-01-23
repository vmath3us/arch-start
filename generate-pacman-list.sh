#!/bin/bash
function no-devel(){
execute=$(pacman -Qqen | grep -Ev "$(pacman -Qg base-devel | cut -d " " -f2)" > 1.1-packagelist-not-devel.pacman) &&
    git commit -am "ArchGnome Workstation list explicit, no base-devel" &&
    ./commit
}
function list-package(){
    pacman -Qqen > 1-packagelist.pacman
    git commit -am "ArchGnome Workstation list explicit" &&
    ./commit &&
    no-devel
}
list-package
