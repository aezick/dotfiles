# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/andrewzick/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git zsh-z )

source $ZSH/oh-my-zsh.sh

# User configuration

# History max sizes
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=50000

# Immediately append to history
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY

# Don't perform history expansion
unsetopt HIST_VERIFY

# Other history settings
setopt HIST_FIND_NO_DUPS
export HISTFILE=~/.zsh_history

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

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

# More complex aliases
# (many from thread: https://twitter.com/QuinnyPig/status/1473112091808591874)

# This function means `cdf` changes directory to that of your frontmost Finder window.
cdf() {
  target=`osascript -e 'tell application "Finder" to get POSIX path of (target of front Finder window as text)'`
  cd "$target"
}

# This alias opens your current directory in Finder.
alias f='open -a Finder ./'

