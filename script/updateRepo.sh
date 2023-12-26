#!/usr/bin/env bash

baseDir="${HOME}/.config"

# Don't copy neovim config, let the submodule handle it
subDirs=("kitty" "fish" "picom" "polybar" "sxhkd" "vivaldi-theme")

function copyConfigsHere() {
    for i in "${subDirs[@]}"; do
        dir="${baseDir}/${i}"
        if [[ -d "${dir}" ]]; then
            echo "Copying ${dir}"
            cp -rf "${dir}" .config/
        fi
    done
}

copyConfigsHere
