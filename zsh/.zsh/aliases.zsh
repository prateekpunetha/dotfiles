# various aliases.
alias ls="ls --color"
alias free="free -h"
alias fdisk="sudo fdisk -l"
alias zsh="exec zsh"
alias n="nvim"
alias vim="nvim"
alias cat="bat --style=grid,header"
alias orphan="sudo pacman -Rs $(pacman -Qqtd)"
alias btm="btm --battery"
alias copy="xclip -selection clipboard"
alias rangercd=". ranger"
alias alive="systemd-inhibit --what=handle-lid-switch sleep"
alias wget="wget --hsts-file /tmp/wgethist.txt"

# wireguard
alias up="systemctl start wg-quick@wg0 --now"
alias down="systemctl stop wg-quick@wg0 --now"

# clear greenclip history
gnclr() {
    pkill greenclip && greenclip clear && greenclip daemon &
} >/dev/null 2>&1
