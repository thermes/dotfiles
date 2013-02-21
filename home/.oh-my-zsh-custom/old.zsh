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
#	export LS_OPTIONS='--color=auto'
#	eval `dircolors`
	;;
    darwin*)					# MacOS X
	LANG_JAPANESE=ja_JP.UTF-8
	if [[ -x '/usr/local/bin/brew' ]]; then
	    # fpath
	    fpath=(/usr/local/share/zsh/functions ${fpath})

	    # coreutils
	    PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	    # LS color
#	    export LS_OPTIONS='--color=auto'
#	    eval `dircolors`
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
    screen*)
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
LISTMAX=0

## setopt

# clobber
setopt NO_CLOBBER

# correct
setopt CORRECT_ALL
setopt LIST_PACKED

# history
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_STORE

# glob
setopt EXTENDED_GLOB

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
