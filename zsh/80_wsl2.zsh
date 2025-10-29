#! /bin/zsh

if grep -q "microsoft" /proc/version; then
    eval $($HOME/.local/bin/wsl2-ssh-agent)
fi
