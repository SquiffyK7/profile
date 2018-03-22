#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=vim
export EDITOR="$VISUAL"

alias ls='ls --color=auto'
alias vi='vim'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias py='python'

rightprompt() {
  if [[ "$1" == 0 ]]; then
    printf "%*s" $COLUMNS ":)"
  else
    printf "%*s" $COLUMNS ":("
  fi
}

export PS1='\[$(STAT="$?"; tput sc; rightprompt "$STAT"; tput rc)\]\u@\h:\W\$ '

PATH=$PATH:/home/lewis/bin
