#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias l='eza -lh'
alias ls="eza -lha"
alias ll="eza -lha"
alias tree="tree -C"

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"