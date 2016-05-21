### Aliases ###############################################################
alias cdd="cd .."
alias hc="~/Applications/hashcat/hc"
alias grep="grep --color"
alias la="ls -G -h -A"
alias ll="ls -G -h -l"
alias ls="ls -G -h"
alias wcl="wc -l"

### Editor ################################################################
export EDITOR="vim"

### History ###############################################################
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTIGNORE="ls:ll:la:git st"      # ignore these commands in history
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                 # append to history, dont overwrite it
