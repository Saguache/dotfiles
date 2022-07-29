#!/usr/bin/env bash

files=(
    # ".bashrc" -- removing this because I don't use Ruby
    ".bash_profile"
    ".vimrc"
    ".gitconfig"
    ".gitignore_global"
    ".k8s"
    )

for dotfile in "${files[@]}"
do
    if [[ -f "$HOME/$dotfile" ]]; then
      rm "$HOME/$dotfile"
    fi
    ln -sv "$(pwd)/$dotfile" "$HOME/$dotfile"
done
