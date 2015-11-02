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
    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/brew_install.sh | /bin/sh

### Homebrew-Cask ###

    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/brew_cask_install.sh | /bin/sh

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

### git ###

    $ cat > ~/.gitconfig.local
    [user]
        name = (name)
        email = (mail address)

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
    $ homesick clone git@github.com:thermes/dotfiles.git
    $ homesick symlink dotfiles

### Cask ###

    $ cd .emacs.d
    $ cask

### misc gems ###

    $ gem update
    $ gem install bundler pry rubocop ruby-lint

Link
----

* [Homebrew](http://brew.sh/)
* [Homebrew-Cask](https://github.com/caskroom/homebrew-cask)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Cask](https://github.com/cask/cask)
* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)
* [homesick](https://github.com/technicalpickles/homesick)
