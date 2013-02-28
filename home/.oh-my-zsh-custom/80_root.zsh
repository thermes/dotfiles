if [[ $UID -eq 0 ]]; then
    export EDITOR=vi
    unset HISTFILE
    SAVEHIST=0
fi
