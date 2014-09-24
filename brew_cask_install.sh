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
brew cask install sdformatter
brew cask install vagrant
brew cask install virtualbox

## symbolic link
brew cask install alfred
brew cask install appcleaner
brew cask install caffeine
brew cask install ccleaner
brew cask install coteditor
brew cask install cyberduck
brew cask install dropbox
brew cask install firefox-ja
brew cask install google-chrome
brew cask install google-earth
brew cask install iterm2
brew cask install libreoffice
brew cask install limechat
brew cask install macs-fan-control
brew cask install magican
brew cask install onyx
brew cask install sequel-pro
brew cask install the-unarchiver
brew cask install thunderbird-ja
brew cask install vlc
brew cask install xld
