if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    PROMPT='%F{blue}%n@%m%f:%F{yellow}%~%f
%S%h%s %(?..%F{red})%(!.#.$)%f '

    ZSH_THEME_GIT_PROMPT_PREFIX="%F{blue}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

    # display exitcode on the right when >0
    return_code="%(?..%F{red}%S%?%s%f)"

    RPROMPT='${return_code}$(git_prompt_status)%f $(git_prompt_info) %F{green}[%*]%f'

    ZSH_THEME_GIT_PROMPT_ADDED="%F{green} ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED="%F{blue} ✹"
    ZSH_THEME_GIT_PROMPT_DELETED="%F{red} ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED="%F{magenta} ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED="%F{yellow} ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{cyan} ✭"
else
    PROMPT='%n@%m:%~
%S%h%s %(!.#.$) '

    ZSH_THEME_GIT_PROMPT_PREFIX=""
    ZSH_THEME_GIT_PROMPT_SUFFIX=""
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

    # display exitcode on the right when >0
    return_code="%(?..%S%?%s)"

    RPROMPT='${return_code}$(git_prompt_status) $(git_prompt_info) [%*]'

    ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
    ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"
fi
