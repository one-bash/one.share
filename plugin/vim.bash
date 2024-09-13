# ONE_LOAD_PRIORITY: 398
# shellcheck disable=SC2139
about-plugin 'Set vim as default editor in terminal'
one-bash:mod:deps vim

export VISUAL='vim'
export EDITOR="$VISUAL"

alias edit="$VISUAL"
alias pager="$VISUAL"
