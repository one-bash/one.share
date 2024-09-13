ABOUT='https://github.com/ajeetdsouza/zoxide'
RUN_AND_APPEND() {
	zoxide init bash --cmd "${ZOXIDE_CMD:-z}" --hook pwd
}
