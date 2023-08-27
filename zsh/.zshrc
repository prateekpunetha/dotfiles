# only sourcing here!!
source $HOME/.zprezto/init.zsh
source $HOME/.zsh/fast/fast-syntax-highlighting.plugin.zsh
source $HOME/.zsh/config.zsh
source $HOME/.zsh/functions.zsh
export PATH=$HOME/bin:$PATH
export LESSHISTFILE=-
GPG_TTY=$(tty)

# fzf bindings
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
