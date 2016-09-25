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
    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/brew_install.sh | /bin/sh

### Homebrew-Cask

    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/brew_cask_install.sh | /bin/sh

Debian / Ubuntu
---------------

### apt

    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/deb_install.sh | sudo /bin/sh

Common
------

### oh-my-zsh

    $ curl -L http://install.ohmyz.sh | sh

### Spacemacs

    $ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

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
    [github]
	    user = (user)
	    oauth-token = (token)
    $ git config user.email

### misc gems

    $ gem update
    $ gem install bundler pry pry-doc rubocop ruby-lint ruby_parser

### crenv

    $ anyenv install crenv
    $ eval "$(anyenv init -)"
    $ crenv install crystal-version
    $ crenv global crystal-version
    $ crenv rehash

Link
----

* [Homebrew](http://brew.sh/)
* [Homebrew-Cask](https://github.com/caskroom/homebrew-cask)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Spacemacs](https://github.com/syl20bnr/spacemacs)
* [anyenv](https://github.com/riywo/anyenv)
* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)
* [homesick](https://github.com/technicalpickles/homesick)
