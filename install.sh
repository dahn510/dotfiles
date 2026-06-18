#!/usr/bin/env bash
set -e -u -o pipefail

for package in */; do
    stow --verbose --restow --dotfiles "$package"
done
