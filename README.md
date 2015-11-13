dotfiles
========

* zsh
* tmux
* Emacs
* Git
* Ruby

OSX
---

### Homebrew

    $ xcode-select --install
    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/brew_install.sh | /bin/sh

### Homebrew-Cask

    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/brew_cask_install.sh | /bin/sh

Other OS
--------

### Cask

    $ curl -fsSkL https://raw.github.com/cask/cask/master/go | python

Common
------

### oh-my-zsh

    $ curl -L http://install.ohmyz.sh | sh

### anyenv

    $ git clone https://github.com/riywo/anyenv ~/.anyenv
    $ export PATH="$HOME/.anyenv/bin:$PATH"
    $ eval "$(anyenv init -)"

### rbenv & ruby-build

    $ anyenv install rbenv
    $ eval "$(anyenv init -)"
    $ rbenv install ruby-version
    $ rbenv global ruby-version
    $ rbenv rehash

### homesick

    $ gem install homesick
    $ rbenv rehash
    $ homesick clone git@github.com:thermes/dotfiles.git
    $ homesick symlink dotfiles
    $ cd ~/.homesick/repos/dotfiles
    $ cat >> .git/config
    [user]
        name = (name)
        email = (mail address)
    $ git config user.email

### git

    $ cat > ~/.gitconfig.local
    [user]
        name = (name)
        email = (mail address)
    $ git config user.email

### Cask

    $ cd .emacs.d
    $ cask

### misc gems

    $ gem update
    $ gem install bundler pry rubocop ruby-lint

Link
----

* [Homebrew](http://brew.sh/)
* [Homebrew-Cask](https://github.com/caskroom/homebrew-cask)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Cask](https://github.com/cask/cask)
* [anyenv](https://github.com/riywo/anyenv)
* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)
* [homesick](https://github.com/technicalpickles/homesick)
