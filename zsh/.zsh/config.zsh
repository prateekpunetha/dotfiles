# shell settings
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.

# zsh completion
autoload -U compinit && compinit

# ls colors
eval $( dircolors -b $HOME/.dircolors )

# default editor
export EDITOR=nvim

# determines search program for fzf
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden""'
fi

# emacs keybinding for beginning of line
bindkey "^A" beginning-of-line

# various aliases.
alias free="free -h"
alias fdisk="sudo fdisk -l"
alias zsh="exec zsh"
alias n="nvim"
alias cat="bat --style=grid,header"
alias orphan="yay -Rns $(pacman -Qtdq)"
alias btm="btm --battery"
alias copy="xclip -selection clipboard"
alias rangercd=". ranger"
alias alive="systemd-inhibit --what=handle-lid-switch sleep"
