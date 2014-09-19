dotfiles
========

* zsh
* tmux
* Emacs
* Git
* Ruby

OSX
---

### Homebrew ###

    $ xcode-select --install
    $ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

### Brew-file ###

    $ export HOMEBREW_CASK_OPTS="--appdir=/Applications"
    $ brew tap rcmdnk/file
    $ brew install brew-file
    $ brew file set_repo -r thermes/Brewfile
    $ brew file update

### rbenv & ruby-build ###

    $ export RBENV_ROOT=/usr/local/var/rbenv

Other OS
--------

### Cask ###

    $ curl -fsSkL https://raw.github.com/cask/cask/master/go | python

### rbenv & ruby-build ###

    $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    $ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

Common
------

### oh-my-zsh ###

    $ curl -L http://install.ohmyz.sh | sh

### rbenv & ruby-build ###

    $ eval "$(rbenv init -)"
    $ rbenv install ruby-version
    $ rbenv global ruby-version
    $ rbenv rehash

### homesick ###

    $ gem install homesick
    $ rbenv rehash
    $ homesick clone thermes/dotfiles
    $ homesick symlink dotfiles

### Cask ###

    $ cd .emacs.d
    $ cask

### misc gems ###

    $ gem update
    $ gem install bundler
    $ gem install pry
    $ gem install rubocop
    $ gem install ruby-lint

Link
----

* [Homebrew](http://brew.sh/)
* [Brew-file](https://github.com/rcmdnk/homebrew-file)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Cask](https://github.com/cask/cask)
* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)
* [homesick](https://github.com/technicalpickles/homesick)
