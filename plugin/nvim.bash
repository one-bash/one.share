# ONE_LOAD_PRIORITY: 399
# shellcheck disable=SC2139
about-plugin 'nvim settings'
one-bash:mod:deps nvim

export VISUAL='nvim'
export EDITOR="$VISUAL"

alias edit="$VISUAL"
alias pager="$VISUAL"

one_l.has command vim || alias vim='nvim'
