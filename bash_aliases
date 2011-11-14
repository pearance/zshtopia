##################################
# SHELLTOPIA ALIASES & FUNCTIONS #
##################################



# ENVIRONMENT
#-------------------------------------------------------------------------------
alias eprofile='vim ~/.profile'
alias ebash='vim ~/.bashrc'
alias ealias='vim ~/.bash_aliases'
alias re='. ~/.profile' # Reload Environment



# GENERAL COMMANDS
#-------------------------------------------------------------------------------
alias less='less -r'
alias whence='type -a'
alias grep='grep --color=auto'
function fup {
  mv $1/.git /tmp/
  mv $1 /tmp/
  tar -xf $1*.tar
  mv $1*.tar /tmp/
  mv /tmp/.git $1/
  drush $2 en $1 -y
}



# NAVIGATION
#-------------------------------------------------------------------------------
alias ls='ls -hF --color=auto --group-directories-first'
alias ll='clear && ls --color=auto -hFlX --group-directories-first'
alias la='clear && ls --color=auto -hFlXA --group-directories-first'
alias ..='cd ..'
alias tt='tree -C'
alias td='tree -dC'
function p { clear; cd /srv/$1/; ll; }



# FILE MANAGEMENT
#-------------------------------------------------------------------------------
alias rm='rm -if'
alias cp='cp -i'
alias mv='mv -i'
alias ra='rm -r * .*'
alias df='df -h'
alias du='du -sh'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias trash='mv -t ~/trash/ --backup=t'
function chmoddirs { chmod $1 $(find . ! -type f); }
function chmodfiles { chmod $1 $(find . ! -type d); }



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



# GIT
#-------------------------------------------------------------------------------
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
alias gt='git tag'
alias gco='git checkout'
alias ginit='git init; git add .; git commit -m "Initial commit"'
alias gkill='rm -r .git'

alias gresolve='git !f() { git ls-files --unmerged | cut -f2 | sort -u ; }; vim `f`'
alias gaddresolve='git !f() { git ls-files --unmerged | cut -f2 | sort -u ; }; git add `f`'



# DRUSH
#######
alias d='drush -y'
alias dgit='d dl --package-handler=git_drupalorg'
alias 'dldm'='drush pm-list --pipe --type=module --status=disabled'
alias 'dlem'='drush pm-list --pipe --type=module --status=enabled'





# TMUX
######
alias tmux='tmux -2 -u'
alias A='tmux attach'


# TOOLS
#######
alias colors='termcolors | less'


source ~/.local.bash_aliases

# vim: set ft=sh:
