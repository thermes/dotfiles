#! /bin/zsh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[magenta]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"

# display exitcode on the right when >0
return_code="%(?..%{$fg[red]%}%S%?%s%{$reset_color%})"

PROMPT='\
%{$fg[blue]%}%n%{$reset_color%}\
@\
%{$fg[green]%}%m%{$reset_color%}\
:\
%{$fg[yellow]%}%~%{$reset_color%}
%(?..%{$fg[red]%})%(!.#.$)%{$reset_color%} '

RPROMPT='\
${return_code} \
$(git_prompt_status) \
$(git_prompt_info) \
%{$fg[cyan]%}!%h%{$reset_color%} \
%{$fg[green]%}[%*]%{$reset_color%}'
