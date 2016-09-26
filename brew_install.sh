#! /bin/sh

### Homebrew packages

## Zsh
brew install zsh --without-etcdir

## tmux
brew install tmux

## Emacs
brew install emacs --with-cocoa --with-gnutls --with-librsvg --with-imagemagick
brew link emacs

## Git
brew install git
brew install tig

## rbenv (on anyenv)
brew install readline
brew install libyaml

## Gauche
brew install gauche

## misc
brew install colordiff
brew install coreutils
brew install discount
brew install imagemagick
brew install lftp
brew install lv
brew install mobile-shell
brew install nkf
brew install the_silver_searcher
brew install w3m
brew install watch
brew install wget
