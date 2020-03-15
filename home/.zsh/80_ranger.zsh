#! /bin/zsh

ranger() {
    [[ -n "$RANGER_LEVEL" ]] \
        && exit \
        || command ranger "$@";
}

[[ -n "$RANGER_LEVEL" ]] && RPROMPT="(RANGER) $RPROMPT"

alias ra=ranger
