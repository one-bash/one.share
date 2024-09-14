ABOUT='bash prompt (PS1). https://github.com/adoyle-h/a-bash-prompt'
GITHUB_REPO=https://github.com/adoyle-h/a-bash-prompt
SCRIPT=a.prompt.bash
APPEND() {
	PROMPT_ENABLE_HISTORY_APPEND=1
	PROMPT_PYTHON_VIRTUALENV_LEFT=
	PROMPT_STYLE_CWD=block          # bubble or block
	PROMPT_STYLE_TIME=bubble        # bubble or block
	PROMPT_STYLE_EXIT_STATUS=bubble # bubble or block
	PROMPT_STYLE_JOB=bubble         # bubble or block
	PROMPT_COLOR_TIME=GREEN
	PROMPT_FORMAT_TIME=' %s'
}
