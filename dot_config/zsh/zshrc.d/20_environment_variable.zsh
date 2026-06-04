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
export VISUAL=$EDITOR

# LANG
case $TERM in
    tmux*|screen*)
        export LANG=ja_JP.UTF-8
        ;;
    rxvt|kterm|xterm-256color|xterm-color|xterm-ghostty|mlterm)
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
if [[ -x `whence -p less` ]]; then
    export LESS='-Mci -R -x4'
    if [[ -x `whence -p lesspipe.sh` ]]; then
        export LESSOPEN='| lesspipe.sh %s'
    fi
    export PAGER=less
else
    export PAGER=more
fi

if [[ -z "${SSH_CONNECTION}" ]]; then
    if [[ -n "$WSL_DISTRO_NAME" ]]; then
        eval $($HOME/.local/bin/wsl2-ssh-agent)
    else
        op_sock="$HOME/.1password/agent.sock"
        [[ -S "$op_sock" ]] && export SSH_AUTH_SOCK="$op_sock"
        unset op_sock
    fi
fi

# misc
export BLOCKSIZE=K
