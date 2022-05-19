#! /bin/zsh

if [[ -z $LS_COLORS ]]; then
    alias ls='ls -F'
else
    ls --color -d . &>/dev/null && alias ls='ls -F --color=auto'
fi

alias la='ls -A'
alias lsa='ls -A'
alias ll='ls -lh'
alias lla='ls -lAh'

alias l=$PAGER

alias man='nocorrect man'
alias cp='nocorrect cp -i'
alias mv='nocorrect mv -i'
alias rm='nocorrect rm'
alias mkdir='nocorrect mkdir'

alias aptitude='nocorrect aptitude'
alias gem='nocorrect gem'
alias git='nocorrect git'
alias homesick='nocorrect homesick'
alias rbenv='nocorrect rbenv'
alias ssh='nocorrect ssh'
alias sudo='nocorrect sudo'
alias vagrant='nocorrect vagrant'
alias w3m='nocorrect w3m'

if [[ -x `whence -p colordiff` ]]; then
    alias diff='colordiff'
fi

if [[ $TERM == tmux* ]]; then
    alias emacs='TERM=tmux-direct emacs'
fi

alias -g G='|grep'
alias -g H='|head'
alias -g L="|$PAGER"
alias -g S='|sort'
alias -g T='|tail'
alias -g U='|uniq'
alias -g X='|xargs'
