dotfiles
========

* zsh
* Emacs
* tmux
* Git
* Ruby

Homebrew
--------

[Homebrew](http://brew.sh/)

    $ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

rbenv & ruby-build
------------------

[rbenv](https://github.com/sstephenson/rbenv) & [ruby-build](https://github.com/sstephenson/ruby-build)

    $ brew install rbenv ruby-build
    $ export RBENV_ROOT=/usr/local/var/rbenv

or

    $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    $ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

    $ eval "$(rbenv init -)"
    $ rbenv install ruby-version
    $ rbenv global ruby-version
    $ rbenv rehash

oh-my-zsh
---------

[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    $ curl -L http://install.ohmyz.sh | sh

homesick
--------

[homesick](https://github.com/technicalpickles/homesick)

    $ gem install homesick
    $ homesick clone thermes/dotfiles
    $ homesick symlink dotfiles

Cask
----

[Cask](https://github.com/cask/cask)

    $ brew install cask

of

    $ curl -fsSkL https://raw.github.com/cask/cask/master/go | python
