ABOUT='https://github.com/atuinsh/atuin'
# autin should after fzf plugin to override Ctrl-R key binding
PRIORITY=401
RUN_AND_APPEND() {
	atuin init bash --disable-up-arrow
}
