#! /bin/zsh

# clobber
unsetopt CLOBBER

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
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# glob
setopt EXTENDED_GLOB

# directory
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS
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
