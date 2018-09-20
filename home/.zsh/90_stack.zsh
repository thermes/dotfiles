#! /bin/zsh

if [[ -x `whence -p stack` ]]; then
    path=(
        $HOME/.local/bin(N-/)
        $HOME/.stack/programs/x86_64-osx/ghc-8.4.3/bin(N-/)
        $HOME/.stack/programs/x86_64-linux/ghc-8.4.3/bin(N-/)
        $path
    )
fi
