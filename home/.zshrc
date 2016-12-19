
source ~/.zplug/init.zsh

case $OSTYPE in
    linux*)                     # Linux generic
 	      export X11HOME=/usr/X11R6
 	      ;;
    darwin*)                    # OSX
 	      export X11HOME=/usr/X11
 	      ;;
    *)
 	      ;;
esac

# set path
typeset -U path
path=(
    $HOME/bin(N-/)
    $ZPLUG_HOME/bin(N-/)
    $HOME/.anyenv/bin(N-/)
    $HOME/.rbenv/bin(N-/)
    $HOME/.linuxbrew/bin(N-/)
    /usr/local/opt/coreutils/libexec/gnubin(N-/)
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

# set manpath
typeset -U manpath
manpath=(
    $HOME/.linuxbrew/share/man(N-/)
    /usr/local/opt/coreutils/libexec/gnuman(N-/)
    /Library/Developer/CommandLineTools/usr/share/man(N-/)
    /opt/local/share/man(N-/)
    /opt/share/man(N-/)
    /usr/local/share/man(N-/)
    /usr/share/man(N-/)
    $X11HOME/share/man(N-/)
    $manpath
)
export MANPATH

# Supports oh-my-zsh plugins and the like
zplug "plugins/git", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/functions", from:oh-my-zsh
zplug "lib/git", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/misc", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

# Can manage local plugins
zplug "~/.zsh", from:local, defer:2

# Load theme file
zplug 'thermes/thermes.zsh-theme', as:theme

# Then, source plugins and add commands to $PATH
zplug load
