# ONE_LOAD_PRIORITY: 399
# shellcheck disable=SC2139
about-plugin 'nvim settings'

one_check_cmd nvim || return 1

export VISUAL='nvim'
export EDITOR="$VISUAL"

alias edit="$VISUAL"
alias pager="$VISUAL"
