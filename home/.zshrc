#! /bin/zsh

case $OSTYPE in
    linux*)					# Linux generic
	export X11HOME=/usr/X11R6
	;;
    darwin*)					# MacOS X
	export X11HOME=/usr/X11
        export RBENV_ROOT=/usr/local/var/rbenv
	;;
    *)
	;;
esac

## set path
typeset -U path
typeset -U PATH
path=(
    $HOME/bin(N-/)
    $HOME/local/bin(N-/)
    $HOME/.rbenv/shims(N-/)
    $HOME/.rbenv/bin(N-/)
    $HOME/.cask/bin(N-/)
    $HOME/.linuxbrew/bin(N-/)
    /usr/local/opt/coreutils/libexec/gnubin(N-/)
    /opt/local/sbin(N-/)
    /opt/local/bin(N-/)
    /opt/chef/bin(N-/)
    /opt/sbin(N-/)
    /opt/bin(N-/)
    /usr/local/sbin(N-/)
    /usr/local/bin(N-/)
    /usr/sbin(N-/)
    /usr/bin(N-/)
    /sbin(N-/)
    /bin(N-/)
    /usr/ucb(N-/)
    /usr/games(N-/)
    $X11HOME/bin(N-/)
    $path
)

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="thermes"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler gem git z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

