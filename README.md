# dotfiles

- zsh
- tmux
- Git
- Ruby

## Debian / Ubuntu

### apt

    $ sudo apt install curl
    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/.install/deb_install.sh | sudo /bin/sh

### mise

    $ curl https://mise.run | sh

## macOS

### Homebrew

    $ xcode-select --install
    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/.install/brew_install.sh | /bin/sh

### Homebrew-Cask

    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/.install/brew_cask_install.sh | /bin/sh

## Common

### chsh

    $ chsh -s /bin/zsh

### rcm

    $ git clone git@github.com:thermes/dotfiles.git ~/.dotfiles
    $ mkdir ~/.dotfiles-ssh
    $ mkdir ~/.dotfiles-local
    $ env RCRC=$HOME/.dotfiles/rcrc rcup -v

### zplug

    $ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
    $ source ~/.zplug/init.zsh
    $ source .zshrc
    $ zplug install
    $ zplug clean
    $ zplug clear

### misc gems

    $ gem update
    $ gem install bundler debug rubocop reek

# After Setting

## macOS

    # touch /etc/nsmb.conf
    # echo "[default]" >> /etc/nsmb.conf
    # echo "signing_required=no" >> /etc/nsmb.conf

# Link

- [Homebrew](http://brew.sh/)
- [Homebrew Cask](https://caskroom.github.io/)
- [rcm](https://github.com/thoughtbot/rcm)
- [zplug](https://github.com/zplug/zplug)
- [oh-my-zsh](http://ohmyz.sh/)
- [mise-en-place](https://mise.jdx.dev/)
