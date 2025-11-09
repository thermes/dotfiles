#! /bin/zsh

if grep -q "microsoft" /proc/version; then
    if [[ -z "$SSH_AUTH_SOCK" ]]; then
        eval $($HOME/.local/bin/wsl2-ssh-agent)
    fi
fi
