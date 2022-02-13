# only sourcing here!!
source $HOME/.zprezto/init.zsh
source $HOME/.zsh/fast/fast-syntax-highlighting.plugin.zsh
source $HOME/.zsh/config.zsh
source $HOME/.zsh/functions.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export PATH=$HOME/bin:$PATH
export LESSHISTFILE=-
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
GPG_TTY=$(tty)
