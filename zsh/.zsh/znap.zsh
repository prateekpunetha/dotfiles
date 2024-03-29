# Download Znap, if it's not there yet.
[[ -f ~/.zsh-snap/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.zsh-snap/zsh-snap

source ~/.zsh-snap/zsh-snap/znap.zsh

# prmpt
eval "$(starship init zsh)"

# stuff from prezto or oh-my-zsh
znap source sorin-ionescu/prezto modules/{history,completion}
znap source ohmyzsh/ohmyzsh plugins/{sudo,extract,git,tmux}

# plugins
znap source Aloxaf/fzf-tab
znap source marlonrichert/zcolors
znap source zsh-users/zsh-autosuggestions
znap source zdharma-continuum/fast-syntax-highlighting
znap source wbingli/zsh-wakatime
znap source mikcho/zsh-systemd
znap source ael-code/zsh-colored-man-pages
znap source pyenv/pyenv completions

# evals
znap eval zcolors "zcolors ${(q)LS_COLORS}"

# completion
znap function _pip_completion pip       'eval "$( pip completion --zsh )"'
compctl -K    _pip_completion pip
