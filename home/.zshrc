
source ~/.zplug/init.zsh

case $OSTYPE in
    linux*)					# Linux generic
 	      export X11HOME=/usr/X11R6
 	      ;;
    darwin*)					# OSX
 	      export X11HOME=/usr/X11
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
    $ZPLUG_HOME/bin(N-/)
    $HOME/.anyenv/bin(N-/)
    $HOME/.rbenv/bin(N-/)
    $HOME/.cask/bin(N-/)
    $HOME/.linuxbrew/bin(N-/)
    /usr/local/opt/coreutils/libexec/gnubin(N-/)
    /opt/chef/bin(N-/)
    /opt/local/sbin(N-/)
    /opt/local/bin(N-/)
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

# Let zplug manage zplug
zplug "zplug/zplug"

zplug "lib/bzr", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/compfix", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/correction", from:oh-my-zsh
zplug "lib/diagnostics", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/functions", from:oh-my-zsh
zplug "lib/git", from:oh-my-zsh
zplug "lib/grep", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/misc", from:oh-my-zsh
zplug "lib/nvm", from:oh-my-zsh
zplug "lib/prompt_info_functions", from:oh-my-zsh
zplug "lib/spectrum", from:oh-my-zsh
zplug "lib/termsupport", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

# Supports oh-my-zsh plugins and the like
zplug "plugins/git", from:oh-my-zsh

# Can manage local plugins
zplug "~/.zsh", from:local, nice:10
zplug "~/.zsh/thermes.zsh-theme", from:local, nice:10

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
