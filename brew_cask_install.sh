#! /bin/sh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

### Tap repositories and their packages

## caskroom/cask
brew tap caskroom/cask

## caskroom/versions
brew tap caskroom/versions


### Cask packages

## installer
brew cask install adobe-reader
brew cask install flash
brew cask install java
brew cask install karabiner
brew cask install magican
brew cask install sdformatter
brew cask install vagrant
brew cask install virtualbox

## symbolic link
brew cask install appcleaner
brew cask install atom
brew cask install caffeine
brew cask install ccleaner
brew cask install cyberduck
brew cask install dropbox
brew cask install firefox-ja
brew cask install google-chrome
brew cask install google-earth
brew cask install iterm2-beta
brew cask install libreoffice
brew cask install onyx
brew cask install sequel-pro
brew cask install slack
brew cask install supaview
brew cask install the-unarchiver
brew cask install thunderbird-ja
brew cask install vlc
brew cask install xld

## QuickLook
brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
