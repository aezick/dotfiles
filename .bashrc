### Aliases ###############################################################
alias cdc="cd .."
alias hc="~/Applications/hashcat/hc"
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
alias ctfs="cd ~/Desktop/ctfs"
alias foodmenow="cd ~/Desktop/eecs441/foodmenow"
alias forensics="cd ~/Desktop/388\ IA\ Materials/repo_copy/projects/forensics"
alias eecs388="cd /Users/andrewzick/Desktop/eecs388/git_folder/eecs388"
alias cl="clear"
alias ia="cd ~/Desktop/388\ IA\ Materials/repo_copy/"
alias Desktop="cd ~/Desktop"
alias Downloads="cd ~/Downloads"
alias eecs486="cd ~/Desktop/eecs486"
alias eecs489="cd ~/Desktop/eecs489"
alias eecs484="cd ~/Desktop/eecs484"
alias hashcat="cd /Users/andrewzick/Applications/hashcat"
alias caen="ssh caen"
alias df="df -kh"

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
. /usr/local/etc/profile.d/z.sh
