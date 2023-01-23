#!/bin/bash
flatpak list --app --columns=origin,application > flatpak.list &&
    git commit flatpak.list -m "flatpak list, including repo" &&
    ./commit
