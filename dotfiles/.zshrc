# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# nvim path
export PATH="$PATH:/opt/nvim-linux64/bin"

# default editor
export EDITOR=nvim

# term256 color
export TERM=xterm-256color

# cargo path
[ -f ~/.cargo/env ] && source $HOME/.cargo/env


source $(dirname $(gem which colorls))/tab_complete.sh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
eval "$(fzf --zsh)"

# install oh-my-zsh plugins
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# alias
unalias -a

# ==============================================================================
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

# ==============================================================================
alias cd='z'

# ==============================================================================
alias cat='bat'
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'








