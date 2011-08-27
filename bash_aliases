######################
# BASHTOPIA ALIASES  #
######################



# BASH ENVIRONMENT
#-------------------------------------------------------------------------------
alias eprofile='vim ~/.profile'
alias ebash='vim ~/.bashrc'
alias ealias='vim ~/.bash_aliases'
alias re='. ~/.profile' # Reload Environment



# GENERAL COMMANDS
#-------------------------------------------------------------------------------
alias rm='rm -if'
alias cp='cp -i'
alias mv='mv -i'
alias ra='rm -r * .*'                         # Remove all
alias df='df -h'
alias du='du -sh'
alias less='less -r'                          # Raw control characters
alias whence='type -a'                        # Where, of a sort
alias grep='grep --color=auto'                # Show differences in color
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias trash='mv -t ~/trash/ --backup=t'


# NAVIGATION
#-------------------------------------------------------------------------------
alias ls='ls -hF --color=auto --group-directories-first'
alias ll='clear && ls --color=auto -hFlX --group-directories-first'
alias la='clear && ls --color=auto -hFlXA --group-directories-first'
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



# GIT
#-------------------------------------------------------------------------------
alias g='git'
alias gs='git status'
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
alias dr='drush --package-handler=git_drupalorg'



# TMUX
######
alias tmux='tmux -2 -u'
alias A='tmux attach'


# TOOLS
#######
alias colors='termcolors | less'


# FUNCTIONS
###########
function p {
  clear
  cd /srv/$1/
  ll
}

function cs () {
  clear
  # only change directory if a directory is specified
  [ -n "${1}" ] && cd $1
  # filesystem stats
  echo "`df -hT .`"
  echo ""
  echo -n "[`pwd`:"
  # count files
  echo -n " <`find . -maxdepth 1 -mindepth 1 -type f | wc -l | tr -d '[:space:]'` files>"
  # count sub-directories
  echo -n " <`find . -maxdepth 1 -mindepth 1 -type d | wc -l | tr -d '[:space:]'` dirs/>"
  # count links
  echo -n " <`find . -maxdepth 1 -mindepth 1 -type l | wc -l | tr -d '[:space:]'` links@>"
  # total disk space used by this directory and all subdirectories
  echo " <~`du -sh . 2> /dev/null | cut -f1`>]"
  ROWS=`stty size | cut -d' ' -f1`
  FILES=`find . -maxdepth 1 -mindepth 1 |
  wc -l | tr -d '[:space:]'`
  # if the terminal has enough lines, do a long listing
  if [ `expr "${ROWS}" - 6` -lt "${FILES}" ]; then
    ls -ACF
  else
    ls -hlAF --full-time
  fi
}

# vim: set ft=sh:
