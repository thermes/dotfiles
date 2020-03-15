#! /bin/zsh

if [[ -x `whence -p rbenv` ]]; then
    eval "$(rbenv init - --no-rehash)"
fi
