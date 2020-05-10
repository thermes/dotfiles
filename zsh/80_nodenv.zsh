#! /bin/zsh

if [[ -x `whence -p nodenv` ]]; then
    eval "$(nodenv init - --no-rehash)"
fi
