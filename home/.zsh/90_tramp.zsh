#! /bin/zsh

if [[ "$TERM" == "dumb" ]]; then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PROMPT="%n@%m:%~ %(!.#.$) "
    unset RPROMPT
fi
