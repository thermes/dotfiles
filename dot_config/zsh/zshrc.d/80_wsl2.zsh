#! /bin/zsh

if [[ -n "$WSL_DISTRO_NAME" ]]; then
    if [[ -x "`whence -p code`" ]]; then
        export EDITOR="code --wait"
        export VISUAL=$EDITOR
    fi
fi
