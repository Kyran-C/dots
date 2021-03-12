#!/bin/sh

selected=$(ls -A ~/bin | rofi -dmenu -matching fuzzy -sort -p "Edit script" -i )
[[ -z $selected ]] && exit 	# check that returned value isn't null
selected="$HOME/bin/$selected"
kitty sh -c "nvim $selected; zsh"
