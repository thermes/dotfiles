#! /bin/zsh

case $OSTYPE in
    linux*)                     # Linux generic
	      if [[ -x `whence -p brew` ]]; then
	          export LD_LIBRARY_PATH=$HOME/.linuxbrew/lib:/usr/local/lib:/usr/lib:/lib
	      fi
	      ;;
    darwin*)                    # OSX
	      export HOMEBREW_CASK_OPTS="--appdir=/Applications"
	      ;;
    *)
	      ;;
esac

export BLOCKSIZE=K

# EDITOR
if [[ -x `whence -p atom` ]]; then
    export EDITOR='atom -nw'
elif [[ -x `whence -p emacsclient` ]]; then
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
    xterm)
	      if [[ $COLORTERM = "xfce4-terminal" ]]; then
	          export LANG=ja_JP.UTF-8
	      else
	          export LANG=C
	      fi
	      ;;
    *)
	      export LANG=C
	      ;;
esac
unset LC_CTYPE

# LS_COLOR
[[ -f "$HOME/.dircolors" ]] && ls --color -d . &>/dev/null && eval `dircolors .dircolors`

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
