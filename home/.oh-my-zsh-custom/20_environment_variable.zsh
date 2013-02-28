export BLOCKSIZE=K

# EDITOR
if [[ -x `whence -p emacsclient` ]]; then
    export EDITOR=emacsclient
elif [[ -x `whence -p emacs` ]]; then
    export EDITOR=emacs
else
    export EDITOR=vi
fi

# LANG
case $TERM in
    screen*)
	export LANG=ja_JP.UTF-8
	;;
    rxvt|kterm|xterm-256color|xterm-color|mlterm)
	export LANG=ja_JP.UTF-8
	;;
    jfbterm|kon)
	export LANG=ja_JP.UTF-8
	;;
    *)
	export LANG=C
	;;
esac

# LS_COLOR
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . >/dev/null 2>&1 && eval `dircolors`
fi

# MANPATH
typeset -U manpath
typeset -U MANPATH
manpath=(
    $HOME/local/share/man(N-/)
    /usr/local/opt/coreutils/libexec/gnuman(N-/)
    /opt/local/share/man(N-/)
    /opt/share/man(N-/)
    /usr/local/share/man(N-/)
    /usr/share/man(N-/)
    $X11HOME/share/man(N-/)
    $manpath
)
export MANPATH

# PAGER
if [[ -x `whence -p lv` ]]; then
    export PAGER=lv
    export LV='-Au8 -Ia -c'
elif [[ -x `whence -p  less` ]]; then
    export PAGER=less
    export LESS=-Mci
    export LESSOPEN="|lesspipe %s"
    export JLESSCHARSET=utf-8
else
    export PAGER=more
fi
