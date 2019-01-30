#! /bin/zsh

if [[ -f $ZPLUG_REPOS/junegunn/fzf/shell/key-bindings.zsh ]]; then
    [[ $- == *i* ]] && source $ZPLUG_REPOS/junegunn/fzf/shell/key-bindings.zsh 2> /dev/null
fi

if [[ -f $ZPLUG_REPOS/junegunn/fzf/shell/completion.zsh ]]; then
    source $ZPLUG_REPOS/junegunn/fzf/shell/completion.zsh
fi

export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
