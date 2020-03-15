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

### rbenv & ruby-build

    $ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    $ export PATH="$HOME/.rbenv/bin:$PATH"
    $ eval "$(rbenv init -)"
    $ mkdir -p "$(rbenv root)"/plugins
    $ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

Common
------

### Spacemacs

    $ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

### rbenv & ruby-build

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

### zplug

    $ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
    $ source ~/.zplug/init.zsh
    $ source .zshrc
    $ zplug install
    $ zplug clear

### git

    $ cat > ~/.gitconfig.local
    [user]
        name = (name)
        email = (mail address)
    [github]
	    user = (user)
	    oauth-token = (token)
    $ git config user.email

### rbenv & ruby-build

    $ rbenv install ruby-version
    $ rbenv global ruby-version
    $ rbenv rehash

### misc gems

    $ gem update
    $ gem install bundler pry pry-doc rubocop ruby-lint ruby_parser

After Setting
=============

## macOS

    # touch /etc/nsmb.conf
    # echo "[default]" >> /etc/nsmb.conf
    # echo "signing_required=no" >> /etc/nsmb.conf

Link
----

* [Homebrew](http://brew.sh/)
* [Homebrew Cask](https://caskroom.github.io/)
* [zplug](https://zplug.sh/)
* [oh-my-zsh](http://ohmyz.sh/)
* [Spacemacs](http://spacemacs.org/)
* [anyenv](https://github.com/riywo/anyenv)
* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)
* [homesick](https://github.com/technicalpickles/homesick)
