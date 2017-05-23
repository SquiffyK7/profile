#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alh'
alias vi='vim'

PS1='[\u@\h \W]\$ '

PATH=$PATH:/home/lewis/bin
