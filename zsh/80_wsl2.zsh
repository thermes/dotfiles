#! /bin/zsh

if [[ -n "$WSL_DISTRO_NAME" ]]; then
    if [[ -z "$SSH_AUTH_SOCK" ]]; then
        eval $($HOME/.local/bin/wsl2-ssh-agent)
    fi
fi
