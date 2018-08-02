#! /bin/zsh

if [[ -x `whence -p stack` ]]; then
    alias ghci='stack ghci'
    alias ghc='stack ghc --'
    alias runghc='stack runghc --'
fi
