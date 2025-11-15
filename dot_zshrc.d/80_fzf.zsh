#! /bin/zsh

if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

#unalias zz
#zz() {
#    local dir
#    dir="$(fasd -Rds "$@" | fzf -e -1 -0 --no-sort +m | awk '{print $2;}')"
#    [[ -d $dir ]] && cd "${dir}" || return 1
#}
