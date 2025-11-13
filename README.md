# dotfiles

- zsh
- tmux
- Git
- Ruby

## Debian / Ubuntu

### apt

    $ sudo apt update
    $ sudo apt install curl
    $ curl https://raw.githubusercontent.com/thermes/dotfiles/master/.install/deb_install.sh | sudo /bin/sh

### chezmoi

Download and Install deb package.
https://github.com/twpayne/chezmoi/releases/latest

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

### chezmoi

    $ chezmoi init thermes
    $ chezmoi apply
    $ chezmoi cd
    $ git remote set-url origin git@github.com:thermes/dotfiles.git

### zplug

    $ curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
    $ source ~/.zplug/init.zsh
    $ source .zshrc
    $ zplug install
    $ zplug clean
    $ zplug clear

### yazi

    $ ya pkg add yazi-rs/flavors:catppuccin-mocha
    $ ya pkg add yazi-rs/plugins:chmod
    $ ya pkg add yazi-rs/plugins:git

### Ruby

    $ mise use -g ruby
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
- [chezmoi](https://www.chezmoi.io/)
- [zplug](https://github.com/zplug/zplug)
- [oh-my-zsh](http://ohmyz.sh/)
- [mise-en-place](https://mise.jdx.dev/)
