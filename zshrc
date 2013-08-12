# vim:fdm=marker:
#           _
#   _______| |__  _ __ ___
#  |_  / __| '_ \| '__/ __|
#   / /\__ \ | | | | | (__
#  /___|___/_| |_|_|  \___|
#
# Authors:       Fontaine Cook, Various Contributors
# Description:   Configuration file for the terminal multiplexer tmux.
#-------------------------------------------------------------------------------

# INITIALIZATION {{{
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










# }}}
# OPTIONS {{{
setopt noflowcontrol

## Completion
setopt always_to_end
setopt auto_menu
setopt complete_in_word

# Changing Directories
# setopt auto_cd		# type dir & it isn't a command, go to your path.
setopt cdablevarS # if argument to cd is a parameter whose value is a dir, become the cd.
setopt pushd_ignore_dups # avoid duplicate dir onto the directory stack.
# Expansion and Globbing
setopt extended_glob # treat #, ~, and ^ as part of patterns for filename generation

# History
setopt append_history # Allow multiple terminal sessions to all append to one zsh command history
setopt extended_history # save timestamp of command and duration
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
setopt hist_verify # don't execute, just expand history
setopt share_history # imports new commands and appends typed commands to history

# Completion
setopt always_to_end # When completing from the middle of a word, move the cursor to the end of the word
setopt auto_menu # show completion menu on successive tab press. needs unsetop menu_complete to work
setopt auto_name_dirs # any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt complete_in_word # Allow completion from within a word/phrase

unsetopt menu_complete # do not autoselect the first completion entry

# Correction
unsetopt correct # spelling correction for commands
unsetopt correctall # spelling correction for arguments

# Prompt
setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt transient_rprompt # only show the rprompt on the current prompt

# Scripts and Functions
setopt multios # perform implicit tees or cats when multiple redirections are attempted
#-------------------------------------------------------------------------------










# }}}
# EXPORT ENVIRONMENT VARIABLES {{{
export RAILS_DEFAULT_DATABASE=mysql
export VISUAL=vim
export EDITOR=vim
export TERM="xterm-256color"
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin:/var/lib/gems/1.8/bin
stty -ixon
#-------------------------------------------------------------------------------



# Molokai like colors for less and man pages.
export LESS_TERMCAP_mb=$'\E[01;30m'      # begin blinking
export LESS_TERMCAP_md=$'\E[01;35m'      # begin bold
export LESS_TERMCAP_me=$'\E[0m'          # end mode
export LESS_TERMCAP_se=$'\E[0m'          # end standout-mode
export LESS_TERMCAP_so=$'\E[01;45;37m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'          # end underline
export LESS_TERMCAP_us=$'\E[01;36m'      # begin underline
export LS_COLORS="di=01;35:ow=01;31"     # director and file colors
#-------------------------------------------------------------------------------










# }}}
# ENVIRONMENT ALIASES {{{
alias ez='vim ~/.zsh/zshrc'
alias ezl='vim ~/dotfiles/zsh.local/zshrc.local'
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
alias tmux='tmux -2 -u'
alias A='tmux attach'
alias retmux='tmux source-file ~/.tmux.conf && echo REFRESHED TMUX CONFIGURATION!'
#-------------------------------------------------------------------------------



# VIM.
alias ev='vim ~/.vim/vimrc'
alias vup='cd ~/.vim && git pull && gl && cd -'
#-------------------------------------------------------------------------------



# DRUSH.
alias dr='drush -y'
#-------------------------------------------------------------------------------



# Misc. Tools.
alias col='termcolors | less'
alias trash='trash-put'
alias trashl='trash-list'
alias trashe='trash-empty'
#-------------------------------------------------------------------------------










# }}}
# LOAD RVM {{{
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#-------------------------------------------------------------------------------








# }}}
# WRAP {{{
# "Load Local Configurations"
. ~/dotfiles/zsh.local/zshrc.local
#-------------------------------------------------------------------------------

# "Todo/s, Fixme/s"
# TODO:
# }}}
