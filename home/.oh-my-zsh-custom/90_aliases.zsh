#! /bin/zsh

if [ "$DISABLE_LS_COLORS" != "true" ]
then
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
alias w3m='nocorrect w3m'

alias -g L="|$PAGER"
alias -g G='|grep'
alias -g H='|head'
alias -g T='|tail'
alias -g S='|sort'
