#!/bin/bash

declare -A options
options["Edit dotfile"]=edit_dotfile.sh
options["Edit script"]=edit_script.sh
options["Update"]=update_packages.sh
options["1080p"]="xrandr --output VGA-1 --mode 1920x1080"
options["4k"]="xrandr --output VGA-1 --mode 3840x2160"
options["Windows"]="rofi -show window"

options_str="Edit dotfile
Edit script
Update
1080p
4k
Windows"
#options_str=$( printf "%s\n" "${!options[@]}" )

export SUDO_ASKPASS=~/bin/rofi_password_prompt.sh
#echo $options_str
selected=$(echo "$options_str" | rofi -dmenu -matching fuzzy -sort -p ":" -i)
[[ -z $selected ]] && exit 	# check that returned value isn't null
${options[$selected]}
