#! /bin/zsh

if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
