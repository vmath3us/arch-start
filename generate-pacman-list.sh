#!/bin/bash
function no-devel(){
    pacman -Qqe | grep -Ev "$(pacman -Qqm)" | grep -Ev "$(pacman -Qg base-devel | cut -d " " -f2)" > 1.1-packagelist-not-devel.pacman &&
    git commit -am "ArchGnome Workstation list explicit, no base-devel" &&
    git pull
}
function list-package(){
    pacman -Qqe | grep -Ev "$(pacman -Qqm)"
    git commit -am "ArchGnome Workstation list explicit" &&
    git pull &&
    no-devel
}
list-package


