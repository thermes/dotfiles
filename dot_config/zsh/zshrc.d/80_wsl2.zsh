#! /bin/zsh

if [[ -n "$WSL_DISTRO_NAME" ]]; then
    if (( $+commands[code] )); then
        export EDITOR="code --wait"
        export VISUAL=$EDITOR
    fi
fi
