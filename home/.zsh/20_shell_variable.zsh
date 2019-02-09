#! /bin/zsh

LISTMAX=0
READNULLCMD=$PAGER
REPORTTIME=10
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
watch=(notme)

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTFILE=/Users/thermes/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
