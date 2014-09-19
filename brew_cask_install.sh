#! /bin/sh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

### Tap repositories and their packages

## caskroom/cask
brew install caskroom/cask/brew-cask

## caskroom/versions
brew tap caskroom/versions


### Cask packages

## installer
brew cask install adobe-reader
brew cask install karabiner
brew cask install vagrant
brew cask install virtualbox

## symbolic link
brew cask install cyberduck
brew cask install dash
brew cask install dropbox
brew cask install evernote
brew cask install firefox-ja
brew cask install google-chrome
brew cask install iterm2
brew cask install libreoffice
brew cask install onyx
brew cask install vlc
