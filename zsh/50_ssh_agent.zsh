#! /bin/zsh

if [[ -z $SSH_AUTH_SOCK ]]; then
    export NPIPERELAY=/mnt/c/Users/thermes/scoop/apps/wsl-ssh-agent/current/npiperelay.exe
    if [[ -x $NPIPERELAY ]]; then
        export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
        ss -a | grep -q $SSH_AUTH_SOCK
        if [ $? -ne 0 ]; then
            rm -f $SSH_AUTH_SOCK
            ( setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"$NPIPERELAY -ei -s //./pipe/openssh-ssh-agent",nofork & ) >/dev/null 2>&1
        fi
    fi
fi
