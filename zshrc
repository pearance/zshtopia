# Initialization
source ~/.zsh/antigen/antigen.zsh
antigen use oh-my-zsh

# Bundles
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found

# Prompt Theme
antigen theme juanghurtado

antigen apply
#-------------------------------------------------------------------------------



# Options
unsetopt correctall
setopt noflowcontrol
#-------------------------------------------------------------------------------



# Export Environment Variables.
export RAILS_DEFAULT_DATABASE=mysql
export VISUAL=vim
export EDITOR=vim
export TERM="xterm-256color"
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin
stty -ixon
#-------------------------------------------------------------------------------



# Molokai like colors for man pages.
export LESS_TERMCAP_mb=$'\E[01;30m'      # begin blinking
export LESS_TERMCAP_md=$'\E[01;35m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'          # end mode
export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode
export LESS_TERMCAP_so=$'\E[01;45;37m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'          # end underline
export LESS_TERMCAP_us=$'\E[01;36m'      # begin underline
export LS_COLORS="di=01;35:ow=01;31"     # director and file colors
#-------------------------------------------------------------------------------



# Environment Aliases.
alias ez='vim ~/.zsh/zshrc'
alias re='source ~/.zshrc && echo REFRESHED!'
#-------------------------------------------------------------------------------



# Navigation Aliases.
alias ls='ls -hF --color=auto --group-directories-first'
alias ll='clear && ls --color=auto -hFlX --group-directories-first'
alias la='clear && ls --color=auto -hFlXA --group-directories-first'
alias ftree='tree -C | less'
alias dtree='tree -dC | less'
#-------------------------------------------------------------------------------



# File Management Aliases.
alias rm='rm -if'
alias cp='cp -i'
alias mv='mv -i'
alias empty='rm -I * .* && echo EMPTIED!'
function dchmod { chmod $1 $(find . ! -type f); }
function fchmod { chmod $1 $(find . ! -type d); }
#-------------------------------------------------------------------------------



# Git Overrides.
alias g='git'
alias gs='clear; git status'
alias gl='git lg | head'
alias gll='git lg '
alias glog='git log '
alias ga='git add'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gca='git commit -av'
alias gcam='git commit -am'
alias gp='git push'
alias gpom='git push -u origin master'
alias gpu='git pull'
alias gf='git fetch'
alias gm='git merge'
alias gd='git diff'
alias gdt='git difftool'
alias gmv='git mv'
alias grm='git rm'
alias gamend='git commit --amend'
alias gb='git branch'
alias gba='git branch -a'
alias gt='git tag'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcl='git clone'
alias ginit='git init; git add .; git commit -m "Initial commit"'
alias gkill='rm -r .git'

alias gresolve='git !f() { git ls-files --unmerged | cut -f2 | sort -u ; }; $EDITOR `f`'
alias gaddresolve='git !f() { git ls-files --unmerged | cut -f2 | sort -u ; }; git add `f`'
#-------------------------------------------------------------------------------



# TMUX.
#-------------------------------------------------------------------------------
alias tmux='tmux -2 -u'
alias A='tmux attach'
alias retmux='tmux source-file ~/.tmux.conf && echo REFRESHED TMUX CONFIGURATION!'



# VIM.
alias ev='vim ~/.vim/vimrc'
alias vup='cd ~/.vim && git pull && gl && cd -'
#-------------------------------------------------------------------------------



# Misc. Tools.
alias col='termcolors | less'
#-------------------------------------------------------------------------------



# Paths
platforms=/srv/aegir/platforms
#-------------------------------------------------------------------------------



# Load RVM.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#-------------------------------------------------------------------------------

