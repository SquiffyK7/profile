#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# my code
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
