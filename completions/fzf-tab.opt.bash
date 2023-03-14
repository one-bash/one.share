IFS='' # for multi-line string
ABOUT='Tab completion using fzf. https://github.com/lincheney/fzf-tab-completion'
URL=https://github.com/lincheney/fzf-tab-completion.git
SCRIPT=git/bash/fzf-bash-completion.sh
ONE_LOAD_PRIORITY=801 # aliases.completion (LOAD_PRIORITY: 800) will reset completion function
APPEND="cat <<EOF
bind -x '\"\\t\": fzf_bash_completion'
_fzf_bash_completion_loading_msg() {
  printf '%b%s \\n' \"\\\${PS1@P}\" \"\\\${READLINE_LINE}\"  | tail -n 1
}
EOF"
