#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='vim'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias py='python'

#PS1='[\u@\h \W]\$ '
PS1='\u@\h:\W\$ '

PATH=$PATH:/home/lewis/bin
