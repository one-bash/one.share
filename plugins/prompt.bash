# shellcheck disable=SC2034
about-plugin 'bash prompt (PS1). https://github.com/adoyle-h/a-bash-prompt'

script="$ONE_SHARE_DIR/deps/a-bash-prompt/a.prompt.bash"

if [[ ! -f $script ]]; then
  echo "Missing script: ${script}" >&2
  echo "Do you have run 'git submodule update --init --recursive' on $ONE_SHARE_DIR?" >&2
  return 1
fi

PROMPT_ENABLE_HISTORY_APPEND=1
PROMPT_PYTHON_VIRTUALENV_LEFT=
PROMPT_STYLE_CWD=block          # bubble or block
PROMPT_STYLE_TIME=bubble        # bubble or block
PROMPT_STYLE_EXIT_STATUS=bubble # bubble or block
PROMPT_STYLE_JOB=bubble         # bubble or block
PROMPT_COLOR_TIME=GREEN
PROMPT_FORMAT_TIME=' %s'

# shellcheck source=../deps/a-bash-prompt/a.prompt.bash
source "$script"

unset script
