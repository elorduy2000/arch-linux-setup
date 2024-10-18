#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias l='eza -lh'
alias ll="eza -lha"
alias tree="tree -C"
alias cdhome="cd ~"

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"