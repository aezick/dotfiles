### Aliases ###############################################################
alias dc="cd .."
alias grep="grep --color -i"
alias la="ls -G -h -A -p"
alias ll="ls -G -h -l -p"
alias ls="ls -G -h -p"
alias wcl="wc -l"
alias subl="~/bin/subl"
alias always_forget="vim ~/Desktop/dotfiles/always_forget.txt"
alias bashrc="vim ~/.bashrc"
alias dotfiles="cd ~/Desktop/dotfiles"
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
alias checkhash="python ~/Desktop/dotfiles/scripts/checkhash.py"
alias pag="ps aux | grep "

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


. /Users/andrewzick/torch/install/bin/torch-activate
