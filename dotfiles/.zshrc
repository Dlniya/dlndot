# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# cargo path
[ -f ~/.cargo/env ] && source $HOME/.cargo/env

source $(dirname $(gem which colorls))/tab_complete.sh

eval "$(starship init zsh)"





plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias
unalias -a

alias l='colorls --sd --report'
alias ls='colorls --sd'
alias la='colorls --sd --all'
alias ld='colorls --sd --dirs'
alias lf='colorls --sd --files'

alias ll='colorls --sd --long'
alias lla='colorls --sd --long --all'
alias lld='colorls --sd --long --dirs'
alias llf='colorls --sd --long --files'


alias lt='colorls --sd --tree'
alias lta='colorls --sd --tree --all'
alias ltf='colorls --sd --tree --files'
alias ltd='colorls --sd --tree --dirs'

alias llt='colorls --sd --long --tree'
alias llta='colorls --sd --long --tree --all'
alias lltf='colorls --sd --long --tree --files'
alias lltd='colorls --sd --long --tree --dirs'






