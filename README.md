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

### mise

    $ curl -fSs https://mise.en.dev/gpg-key.pub | sudo tee /etc/apt/keyrings/mise-archive-keyring.asc 1> /dev/null

```
> cat /etc/apt/sources.list.d/mise.sources
Types: deb
URIs: https://mise.en.dev/deb
Suites: stable
Components: main
Signed-By: /etc/apt/keyrings/mise-archive-keyring.asc
```

### yazi

    $ curl -sS https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc | sudo gpg --dearmor --yes -o /etc/apt/keyrings/debian.griffo.io.gpg

```
$ cat /etc/apt/sources.list.d/yazi.sources
Types: deb
URIs: https://debian.griffo.io/apt
Suites: resolute
Components: main
Signed-By: /etc/apt/keyrings/debian.griffo.io.gpg
```

### Sheldon

    $ mise use -g sheldon

### Starship

    $ mise use -g starship

### chezmoi

    $ sudo snap install chezmoi --classic

## Common

### chsh

    $ chsh -s /bin/zsh

### chezmoi

    $ touch ~/.config/chezmoi/key.txt
    $ chezmoi init thermes
    $ chezmoi apply
    $ chezmoi cd
    $ git remote set-url origin git@github.com:thermes/dotfiles.git

### git

    $ touch ~/.config/git/config.local

### yazi

    $ ya pkg add yazi-rs/flavors:catppuccin-macchiato
    $ ya pkg add yazi-rs/plugins:smart-enter
    $ ya pkg add yazi-rs/plugins:chmod
    $ ya pkg add yazi-rs/plugins:git

### Ruby

    $ mise use -g ruby
    $ gem update
    $ gem install bundler debug rubocop reek

# Link

- [chezmoi](https://www.chezmoi.io/)
- [Sheldon](https://sheldon.cli.rs/)
- [Starship](https://starship.rs/ja-JP/)
- [mise-en-place](https://mise.jdx.dev/)
- [yazi](https://yazi-rs.github.io/)
