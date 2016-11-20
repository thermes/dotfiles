#! /bin/zsh

if [ "$DISABLE_LS_COLORS" != "true" ]; then
    # Find the option for using colors in ls, depending on the version: Linux or BSD
    ls --color -d . &>/dev/null 2>&1 && alias ls='ls -F --color=auto' || alias ls='ls -F -G'
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
alias vagrant='nocorrect vagrant'
alias w3m='nocorrect w3m'

if [[ -x `whence -p colordiff` ]]; then
    alias diff='colordiff'
fi

alias -g G='|grep'
alias -g H='|head'
alias -g L="|$PAGER"
alias -g S='|sort'
alias -g T='|tail'
alias -g U='|uniq'
alias -g X='|xargs'
