IFS='' # for multi-line string
ABOUT='Tab completion using fzf. https://github.com/lincheney/fzf-tab-completion'
URL=https://github.com/lincheney/fzf-tab-completion.git
SCRIPT=git/bash/fzf-bash-completion.sh
PRIORITY=801 # aliases.completion (LOAD_PRIORITY: 800) will reset completion function
APPEND="cat <<EOF
bind -x '\"\\t\": fzf_bash_completion'
_fzf_bash_completion_loading_msg() {
  printf '%b%s \\n' \"\\\${PS1@P}\" \"\\\${READLINE_LINE}\"  | tail -n 1
}
FZF_TAB_OPTS=''
FZF_TAB_TMUX_OPTS='-h ~50% -w ~80%'
EOF"
