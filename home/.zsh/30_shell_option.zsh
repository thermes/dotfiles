#! /bin/zsh

# clobber
setopt NO_CLOBBER

# correct
setopt CORRECT_ALL
setopt LIST_PACKED

# completion
unsetopt MENU_COMPLETE
unsetopt FLOW_CONTROL
setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END

# history
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_STORE
setopt HIST_IGNORE_SPACE

# glob
setopt EXTENDED_GLOB

# directory
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# job
setopt AUTO_RESUME
setopt LONG_LIST_JOBS
setopt NOTIFY

# other
setopt NUMERIC_GLOB_SORT

# Emacs shell mode
if [[ $EMACS = t ]]; then
    unsetopt zle
fi
