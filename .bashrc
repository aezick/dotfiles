### Aliases ###############################################################
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias grep="grep --color -i"
alias la="ls -G -h -A -p"
alias ll="ls -G -h -l -p"
alias ls="ls -G -h -p"
alias wcl="wc -l"
alias subl="~/bin/subl"
alias bashrc="vim ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias Desktop="cd ~/Desktop"
alias websites="cd ~/Desktop/websites"
alias projects="cd ~/Desktop/projects"
alias ctfs="cd ~/Desktop/ctfs"
alias cl="clear"
alias Desktop="cd ~/Desktop"
alias Downloads="cd ~/Downloads"
alias caen="ssh caen"
alias df="df -kh"
alias pag="ps aux | grep "
alias dlv="go run /Users/andrewzick/go/src/github.com/go-delve/delve/cmd/dlv/main.go"

### Editor ################################################################
export EDITOR="vim"

### Pager #################################################################
alias less="less --ignore-case --raw-control-chars --long-prompt"
export PAGER="less"

### History ###############################################################
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTIGNORE="ls:ll:la:git st"      # ignore these commands in history
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                 # append to history, dont overwrite it

### Other ##################################################################
export WORKKON_HOME=~/.virtualenvs

complete -C /usr/local/bin/terraform terraform

eval "$(zoxide init bash)"
### Docker bash completion  ################################################
if [ -f $(brew --prefix)/etc/bash_completion ]; then
 . $(brew --prefix)/etc/bash_completion
 fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
