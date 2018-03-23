#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make less display colours
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

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
