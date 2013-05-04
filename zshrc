# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


# Specify theme.
#ZSH_THEME="steeef"
ZSH_THEME="juanghurtado"


# Red dots to be displayed while waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Load plugins. Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
source $ZSH/oh-my-zsh.sh


# Turn off flow control
stty -ixon


# Set Path.
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin


# Export environment variables.
export RAILS_DEFAULT_DATABASE=mysql


# Aliases.
alias ez="vim ~/.zshrc"
alias gs="gst"


# Load RVM.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

