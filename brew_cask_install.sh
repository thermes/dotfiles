#! /bin/sh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

### Tap repositories and their packages

## caskroom/cask
brew tap caskroom/cask

## caskroom/versions
brew tap caskroom/versions


### Cask packages

## installer
brew cask install adobe-acrobat-reader
brew cask install flash-npapi
brew cask install google-earth-pro
brew cask install sdformatter
brew cask install virtualbox
brew cask install virtualbox-extension-pack

## copy to /Applications
brew cask install 1password
brew cask install appcleaner
brew cask install caffeine
brew cask install ccleaner
brew cask install cyberduck
brew cask install deckset
brew cask install dropbox
brew cask install emacs
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2-beta
brew cask install java
brew cask install kindle
brew cask install libreoffice
brew cask install onyx
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install supaview
brew cask install the-unarchiver
brew cask install thunderbird
brew cask install vlc
brew cask install xld

## QuickLook
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
