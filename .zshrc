# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/steven/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
#

# Homebrew OSX stuff
export PATH="/usr/local/sbin:$PATH"

# Generic ZSH stuff
export DOTFILES=$HOME/.dotfiles

# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $DOTFILES/z.sh


zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# Zsh plugins
source <(antibody init)

# zsh plugin > spaceship
antibody bundle denysdovhan/spaceship-prompt
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_NODE_SHOW=false

antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# Python
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=~/dev/.envs
source /usr/local/bin/virtualenvwrapper.sh

export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/libxslt/bin:$PATH"
