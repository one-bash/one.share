# ONE_LOAD_PRIORITY: 399
# shellcheck disable=SC2139
about-plugin 'Set nvim as default editor in terminal'
one-bash:mod:deps nvim

export VISUAL='nvim'
export EDITOR="$VISUAL"

alias edit="$VISUAL"
alias pager="$VISUAL"

if one_l.has_not command vim; then
	alias vim='nvim'
fi
