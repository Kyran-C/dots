#!/bin/zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kyran/.config/zsh/.zshrc'
autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
#compinit
# End of lines added by compinstall

function chpwd() {
	print -Pn "\e]2;%~\a"
	ls --color --group-directories-first -Ap
}


# ===== Aliases ====== #
alias update="sudo pacman -S archlinux-keyring --noconfirm && yay -Syu --noconfirm"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls="ls --color --group-directories-first -F"
alias ll="ls --color --group-directories-first -AFohg"
alias la="ls --color --group-directories-first -AF"
alias clr="clear"
alias ranger=". ranger"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias rmr="rm -rI"
alias rg="rg -uu"

# Change terminal font on the fly
setfont() {
	printf '\e]710;%s\007' "$@"
}


# ===== Prompt settings ===== # 

# Default prompt for previously run commands
PS1=$'\n'%K{234}\ \ %k%F{234}$'\ue0bc'%f\ $'\n'%K{234}\ %k%F{234}$'\ue0bc'%f\ \ \ \ 

ZLE_RPROMPT_INDENT=0

function prompt-length {
	local width

	width=${1//\%F\{[[:alnum:]]##\}/} # remove foreground colors
	width=${width//\%f/}

	width=${width//\%K\{[[:alnum:]]##\}/} # remove background colors
	width=${width//\%k/}

	width=${width//\%[Bb]/} # remove bold
	
	width=${${(%)width}} # expand all escapes
	width=${#width} # count the chars

	echo $width
}

function build-prompt {
	# Vim mode prompt
	local VIM_PROMPT="%F{250}%K{234} Normal %k%f%{$reset_color%}"
	local INS_PROMPT="%F{250}%K{234} Insert %k%f%{$reset_color%}"
	local VIS_PROMPT="%F{250}%K{234} Visual %k%f%{$reset_color%}"
	local RightPrompt=${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/$INS_PROMPT}
	local RightPromptScreenWidth=$(prompt-length $RightPrompt)
	local RightPromptWidthDelta=$((${#RightPrompt} - $RightPromptScreenWidth))

	# Input prompt
	local FG1=208
	local FG2=226
	local NEWLINE=$'\n'
	local CHEVRON=%B%F{$FG1}$'\Ue285'%F{$FG2}$'\Ue285'%f$'\Ue285'%b
	local LeftPromptBottom=" %F{255}${CHEVRON}%f  "

	# Top line prompt for user/host/directory
	local LeftPromptTop="%F{246}%n@%m%f %F{234}%K{238}%F{250}%K{234} %~ %k%f"
	local LeftPromptScreenWidth=$(prompt-length "${(S)LeftPromptTop}")

	local CenterPadding=$((COLUMNS + RightPromptWidthDelta))

	local prompt="$(printf "%*s" "$CenterPadding" $RightPrompt)"
	prompt=${prompt:${LeftPromptScreenWidth}}
	PS1="${NEWLINE}$LeftPromptTop$prompt${NEWLINE}${LeftPromptBottom}"
	
	## change cursor shape according to normal/insert mode
	if [[ $KEYMAP == vicmd ]]; then
		# the command mode for vi
		echo -ne "\e[2 q"
	else
		# the insert mode for vi
		echo -ne "\e[6 q"
	fi

	zle reset-prompt
}

function zle-line-init {
	build-prompt
}

zle -N zle-line-init


function zle-keymap-select {
	build-prompt
}

zle -N zle-keymap-select


function zle-line-finish {
	build-prompt
}

zle -N zle-line-finish


# ===== Keybinds ===== #

# Fix delete, home, end keys
bindkey "[3~" delete-char
bindkey "[H" beginning-of-line
bindkey "[F" end-of-line

# vim mode keys
export KEYTIMEOUT=2

# fix insert mode backspace rather than behaving like legacy vi
zle -A backward-delete-char vi-backward-delete-char

bindkey kj vi-cmd-mode
bindkey jk vi-cmd-mode
bindkey -M visual 'kj' deactivate-region
bindkey -M visual 'jk' deactivate-region

bindkey -M vicmd '^z' undo
bindkey -M vicmd '^r' redo

bindkey -M vicmd 'n' vi-insert
bindkey -M vicmd 'N' vi-insert-bol
bindkey -M vicmd 'm' vi-add-next
bindkey -M vicmd 'M' vi-add-eol

bindkey -M vicmd 'f' vi-change
bindkey -M vicmd 's' visual-mode
bindkey -M vicmd 'S' visual-line-mode

bindkey -M vicmd 'c' vi-yank
bindkey -M vicmd 'v' vi-put-after

bindkey -M vicmd 'j' vi-backward-char
bindkey -M viopp 'j' vi-backward-char
bindkey -M visual 'j' vi-backward-char
bindkey -M vicmd ';' vi-forward-char
bindkey -M viopp ';' vi-forward-char
bindkey -M visual ';' vi-forward-char
bindkey -M vicmd 'k' vi-up-line-or-history
bindkey -M viopp 'k' vi-up-line-or-history
bindkey -M vicmd 'l' vi-down-line-or-history
bindkey -M viopp 'l' vi-down-line-or-history

bindkey -M vicmd 'gj' vi-beginning-of-line
bindkey -M viopp 'gj' vi-beginning-of-line
bindkey -M visual 'gj' vi-beginning-of-line
bindkey -M vicmd 'g;' vi-end-of-line
bindkey -M viopp 'g;' vi-end-of-line
bindkey -M visual 'g;' vi-end-of-line

bindkey -M vicmd 'p' vi-forward-word
bindkey -M viopp 'p' vi-forward-word
bindkey -M visual 'p' vi-forward-word
bindkey -M vicmd 'P' vi-forward-blank-word
bindkey -M viopp 'P' vi-forward-blank-word
bindkey -M visual 'P' vi-forward-blank-word

bindkey -M vicmd 'o' vi-forward-word-end
bindkey -M viopp 'o' vi-forward-word-end
bindkey -M visual 'o' vi-forward-word-end
bindkey -M vicmd 'O' vi-forward-blank-word-end
bindkey -M viopp 'O' vi-forward-blank-word-end
bindkey -M visual 'O' vi-forward-blank-word-end

bindkey -M vicmd 'i' vi-backward-word
bindkey -M viopp 'i' vi-backward-word
bindkey -M visual 'i' vi-backward-word
bindkey -M vicmd 'I' vi-backward-blank-word
bindkey -M viopp 'I' vi-backward-blank-word
bindkey -M visual 'I' vi-backward-blank-word
 
bindkey -M vicmd 'u' vi-backward-word-end
bindkey -M viopp 'u' vi-backward-word-end
bindkey -M visual 'u' vi-backward-word-end
bindkey -M vicmd 'U' vi-backward-blank-word-end
bindkey -M viopp 'U' vi-backward-blank-word-end
bindkey -M visual 'U' vi-backward-blank-word-end


export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"
export RANGER_LOAD_DEFAULT_RC=FALSE
export TERMINAL='kitty'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


xrdb -cpp "/usr/bin/cpp -traditional" $HOME/.config/X11/Xresources
