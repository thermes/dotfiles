# ~/.zshenv - Start up script for zsh

## limit
unlimit
limit core 0
limit -s

## umask
umask 022

## OS type
case $OSTYPE in
    linux*)					# Linux generic
	export X11HOME=/usr/X11R6
	export DOMAIN=`hostname -d`
	;;
    darwin*)					# MacOS X
	export X11HOME=/usr/X11
	export DOMAIN=`hostname | sed 's/^[^.]*.//'`
	;;
    freebsd)					# FreeBSD
	path=(/stand $path)
	;;
    *)
	;;
esac

## distribution
if [[ -f /etc/debian_version ]]; then		# Debian GNU/Linux
fi


## set path
path=(
    $HOME/bin
    $HOME/.rbenv/bin
    $HOME/local/bin
    /opt/local/sbin
    /opt/local/bin
    /opt/sbin
    /opt/bin
    /usr/local/sbin
    /usr/local/bin
    /usr/sbin
    /usr/bin
    /sbin
    /bin
    /usr/ucb
    /usr/games
    $X11HOME/bin
    $path
)
p=()
for d in $path
  do
  if [[ -d $d ]]; then
      p=($p $d)
  fi
done
path=($p); unset p d
typeset -U path
export PATH


## environment var
if [[ -x `which emacs` ]]; then
    case $OSTYPE in
	darwin*)					# MacOS X
	    export EDITOR=emacsclient
	    ;;
	*)
	    export EDITOR=emacs
	    ;;
    esac
else
    export EDITOR=vi
fi

if [[ -x `which lv` ]]; then
    export PAGER=lv
    export LV='-Au8 -Ia -c'
elif [[ -x `which less` ]]; then
    export PAGER=less
    export LESS=-Mci
    export LESSOPEN="|lesspipe %s"
    export JLESSCHARSET=utf-8
else
    export PAGER=more
fi

export BLOCKSIZE=K

## OS type
case $OSTYPE in
    linux*)					# Linux generic
	LANG_JAPANESE=ja_JP.UTF-8
	# LS color
	export LS_OPTIONS='--color=auto'
	eval `dircolors`
	;;
    darwin*)					# MacOS X
	LANG_JAPANESE=ja_JP.UTF-8
	if [[ -x '/usr/local/bin/brew' ]]; then
	    # fpath
	    fpath=(/usr/local/share/zsh/functions ${fpath})

	    # coreutils
	    PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	    # LS color
	    export LS_OPTIONS='--color=auto'
	    eval `dircolors`
	else
	    export LS_OPTIONS='-G'
	fi
	;;
    freebsd)					# FreeBSD
	;;
    cygwin)
	export SHELL=`which zsh`
	LANG_JAPANESE=ja_JP.cp932
	export LV='-As -Ia -c'
	# LS color
	export LS_OPTIONS='--color=auto'
	eval `dircolors`
	;;
    *)
	;;
esac

## DOMAIN
case $DOMAIN in
    *confei.to)
	;;
    *)
	;;
esac

## HOSTNAME
case $HOST in
    *)
	;;
esac

## TERM
case $TERM in
    screen)
	export LANG=$LANG_JAPANESE
	;;
    rxvt|kterm|xterm-256color|xterm-color|mlterm)
	export LANG=$LANG_JAPANESE
	;;
    xterm)
	export LANG=$LANG_JAPANESE
	;;
    vt100|kon)
	export LANG=$LANG_JAPANESE
	;;
    cygwin)
	export LANG=$LANG_JAPANESE
	;;
    *)
	export LANG=C
	;;
esac


## shell var
READNULLCMD=$PAGER
LISTMAX=0

PS1='%S%h%s %n@%m%(#.#.$) '
RPS1=' %B%~%b'
SPROMPT='zsh: replace '\''%R'\'' to '\''%r'\'' ? [Yes/No/Abort/Edit] '


## alias
alias ls='ls -F $LS_OPTIONS'
alias sl=ls
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias pu=pushd
alias po=popd
alias di='dirs -v'
alias hi='history 25'
alias key='man -k'
alias l=$PAGER
alias cp='nocorrect cp -i'    # no spelling correction on cp
alias mv='nocorrect mv -i'    # no spelling correction on mv
alias rm='nocorrect rm'       # no spelling correction on rm
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias man='nocorrect man'     # no spelling correction on man
alias -g L="|$PAGER"
alias -g G='|grep'
alias -g H='|head'
alias -g T='|tail'
alias -g S='|sort'


## setopt

# clobber
setopt NO_CLOBBER

# correct
setopt CORRECT_ALL
setopt LIST_PACKED

# history
HISTSIZE=1000
HISTFILE=~/.zhistory
SAVEHIST=1000
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_STORE
setopt HIST_IGNORE_SPACE

# glob
setopt EXTENDED_GLOB

# directory
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS 
setopt PUSHD_SILENT

# job
setopt AUTO_RESUME
setopt LONG_LIST_JOBS
setopt NOTIFY

# other
setopt NUMERIC_GLOB_SORT 

# Emacs shell mode
[[ $EMACS = t ]] && unsetopt zle


## autoload

# compinit
autoload -U compinit
compinit


## zstyle

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# select menu
zstyle ':completion:*:default' menu select=1

# list-colors
if [[ $LS_OPTIONS != '' ]]; then
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

## bindkey
bindkey -e
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

## watch
watch=(notme)

## root
if [[ $UID -eq 0 ]]; then
    export EDITOR=vi
    unset HISTFILE
    SAVEHIST=0
fi

## rbenv
if [[ -x `which rbenv` ]]; then
    eval "$(rbenv init -)"
fi
