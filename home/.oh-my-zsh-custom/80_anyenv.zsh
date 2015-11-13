#! /bin/zsh

if [[ -x `whence -p anyenv` ]]; then
    eval "$(anyenv init -)"
fi
