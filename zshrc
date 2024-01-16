# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
setopt interactivecomments
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/philip/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz bashcompinit
bashcompinit

bindkey '^R' history-incremental-search-backward

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$HOME/bin:$GOBIN:$PATH
export PATH=$HOME/.cargo/bin:$PATH
# avoid complaints with tmux + vim
export TERM=screen-256color

# perl-style regex <3
# alias grep="grep -P"
# Silver Searcher instead of ack
alias ack="ag"
alias vim="nvim"

# Pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# fzf keybindings (ctrl+r, ctrl+t)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export VISUAL=vim
export EDITOR="$VISUAL"

source $HOME/.secrets
