# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# cargo path
[ -f ~/.cargo/env ] && source $HOME/.cargo/env

eval "$(starship init zsh)"





plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias


alias ls='eza --icons --group-directories-first' # because of mucle memory from bash
alias ll='ls -l'


