

ZSH=$HOME/.oh-my-zsh         # Path to your oh-my-zsh configuration.
ZSH_THEME="juanghurtado"     # Specify theme.
#ZSH_THEME="steeef"
COMPLETION_WAITING_DOTS="true" # Red dots to be displayed while waiting for completion.

# Load plugins. Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

unsetopt correctall


# Export Environment Variables.
export RAILS_DEFAULT_DATABASE=mysql
export VISUAL=vim
export EDITOR=vim
export TERM="xterm-256color"
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin
export LESS_TERMCAP_mb=$'\E[01;30m'      # begin blinking
export LESS_TERMCAP_md=$'\E[01;35m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'          # end mode
export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode
export LESS_TERMCAP_so=$'\E[01;45;37m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'          # end underline
export LESS_TERMCAP_us=$'\E[01;36m'      # begin underline
export LS_COLORS="di=01;35:ow=01;31"     # director and file colors



# Environment Aliases.
alias ez='vim ~/.zsh/zshrc'
alias re='source ~/.zshrc && echo REFRESHED!'

# Navigation Aliases.
alias ls='ls -hF --color=auto --group-directories-first'
alias ll='clear && ls --color=auto -hFlX --group-directories-first'
alias la='clear && ls --color=auto -hFlXA --group-directories-first'
alias ftree='tree -C | less'
alias dtree='tree -dC | less'

# File Management Aliases.
alias rm='rm -if'
alias cp='cp -i'
alias mv='mv -i'
alias empty='rm -I * .* && echo EMPTIED!'
function dchmod { chmod $1 $(find . ! -type f); }
function fchmod { chmod $1 $(find . ! -type d); }

# Git Overrides.
alias gpl='git pull'
alias gl='git lg | head'
alias gll='git lg'
alias glog='git log'
alias gs='gst'

# TMUX.
alias tmux='tmux -2 -u'
alias A='tmux attach'
alias retmux='tmux source-file ~/.tmux.conf && echo REFRESHED TMUX CONFIGURATION!'

# VIM.
alias ev='vim ~/.vim/vimrc'
alias vup='cd ~/.vim && git pull && gl && cd -'

# Misc. Tools.
alias col='termcolors | less'


# Load RVM.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

