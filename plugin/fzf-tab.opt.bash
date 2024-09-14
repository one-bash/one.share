ABOUT='Tab completion using fzf. https://github.com/lincheney/fzf-tab-completion'
GITHUB_REPO=https://github.com/lincheney/fzf-tab-completion
SCRIPT=bash/fzf-bash-completion.sh
PRIORITY=801 # aliases.completion (LOAD_PRIORITY: 800) will reset completion function
APPEND() {
	bind -x '"\t": fzf_bash_completion'
	_fzf_bash_completion_loading_msg() {
		# shellcheck disable=1083,2317
		printf '%b%s \n' "${PS1@P}" "${READLINE_LINE}" | tail -n 1
	}
	FZF_TAB_OPTS=''
	FZF_TAB_TMUX_OPTS='-h ~50% -w ~80%'
}
