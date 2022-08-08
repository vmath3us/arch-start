#!/bin/bash
flatpak list --app --columns=origin,application > flatpak.list &&
    git commit -am "flatpak list, including repo" &&
    git push
