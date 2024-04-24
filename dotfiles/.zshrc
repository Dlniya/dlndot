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

# remove all previous aliases
unalias -a

alias ld="eza -lD --icons=always"                                                      # ld — lists only directories (no files) 
alias lf="eza -lf --icons=always --color=always | grep -v /"                           # lf — lists only files (no directories)
alias lh="eza -dl --icons=always .* --group-directories-first"                         # lh — lists only hidden files (no directories)
alias ll="eza -al --icons=always --color=always  --group-directories-first"            # ll — lists everything with directories first
alias ls="eza -alf --icons=always --color=always --sort=size | grep -v /"              # ls — lists only files sorted by size
alias lt="eza -al --icons=always --sort=modified"                                      # lt — lists everything sorted by time updated



