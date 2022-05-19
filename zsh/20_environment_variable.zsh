#! /bin/zsh

case $OSTYPE in
    linux*)                     # Linux generic
        if [[ -x `whence -p brew` ]]; then
            export LD_LIBRARY_PATH=$HOME/.linuxbrew/lib:/usr/local/lib:/usr/lib:/lib
        fi
        ;;
    darwin*)                    # macOS
        export HOMEBREW_CASK_OPTS="--appdir=/Applications"
        ;;
    *)
        ;;
esac

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
    tmux*|screen*)
        export LANG=ja_JP.UTF-8
        ;;
    rxvt|kterm|xterm-256color|xterm-color|mlterm)
        export LANG=ja_JP.UTF-8
        ;;
    jfbterm|kon)
        export LANG=ja_JP.UTF-8
        ;;
    xterm)
        if [[ $LANG != "ja_JP.UTF-8" && -z $COLORTERM ]]; then
            export LANG=C
        fi
        ;;
    *)
        export LANG=C
        ;;
esac
unset LC_CTYPE

# LS_COLOR
if [[ -z $LS_COLORS ]]; then
    ls --color -d . &>/dev/null && eval `dircolors`
fi

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

# misc
export BLOCKSIZE=K
