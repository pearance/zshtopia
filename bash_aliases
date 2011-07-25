###########
# BASHISM #
###########

# ALIASES
#########

# GENERAL COMMANDS
#-------------------------------------------------------------------------------
alias rm='rm -if'
alias cp='cp -i'
alias mv='mv -i'
alias ra='rm -r * .*'
alias del='mv -t ~/share/trash/ --backup=t'
alias df='df -h'
alias du='du -sh'
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in color



# NAVIGATION
#-------------------------------------------------------------------------------
alias ls='ls -hF --color --group-directories-first'
alias ll='clear && ls -hFlX --color  --group-directories-first'
alias la='clear && ls -hFlXa --color --group-directories-first'
alias ..='cd ..'
alias tt='tree -C'
alias td='tree -dC'



# APACHE2
#-------------------------------------------------------------------------------
alias lsa='ll /etc/apache2/sites-available'
alias lma='ll /etc/apache2/mods-available'
alias lse='ll /etc/apache2/sites-enabled'
alias lme='ll /etc/apache2/mods-enabled'
alias sa='cd /etc/apache2/sites-available && ll'
alias ma='cd /etc/apache2/mods-available && ll'
alias se='cd /etc/apache2/sites-enabled && ll'
alias me='cd /etc/apache2/mods-enabled && ll'
alias a2='sudo /etc/init.d/apache2'



# BASH ENVIRONMENT
#-------------------------------------------------------------------------------
alias eprofile='vim ~/.profile'
alias ebash='vim ~/.bashrc'
alias ealias='vim ~/.bash_aliases'
alias re='. ~/.profile' # Reload Environment



# GIT
#-------------------------------------------------------------------------------
alias g='git'
alias gs='git status'
alias gl='git lg | head'
alias gll='git lg '
alias ga='git add'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gca='git commit -av'
alias gcam='git commit -am'
alias gp='git push'
alias gpom='git push origin master'
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
alias gco='git checkout'
alias gkill='rm -r .git'



# FUNCTIONS
###########
function p {
  clear
  cd /srv/$1/
  ll
}

function a2 {
  sudo service apache2 $1
}

function ginit {
 git init
 git add .
 git commit -m 'Initial commit'
}

# vim: set ft=sh:
