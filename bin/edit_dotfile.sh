#!/bin/bash

declare -A files
files[i3]=$HOME/.config/i3/config
files[Neovim]=$HOME/.config/nvim/init.vim
files[Polybar]=$HOME/.config/polybar/config
files[Vim]=$HOME/.config/.vimrc
files[Xresources]=$HOME/.Xresources
files[Zsh]=$HOME/.config/zsh/.zshrc

files_str=$( printf "%s\n" "${!files[@]}" )

selected=$(echo "$files_str" | rofi -dmenu -matching fuzzy -p "Edit Dotfile" -i)
[[ -z $selected ]] && exit 	# check that returned value isn't null
kitty sh -c "nvim ${files[$selected]}; zsh"
