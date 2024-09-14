ABOUT='A full-featured line editor written in pure Bash! Syntax highlighting, auto suggestions'
GITHUB_REPO='https://github.com/akinomyoga/ble.sh'
DEPS='gawk'

AFTER_DOWNLOAD() {
	make -C "$MOD_DATA_DIR/git" install PREFIX="$MOD_DATA_DIR/dist"
}

APPEND() {
	# shellcheck disable=1091
	. "$ONE_DIR/data/plugin/ble/dist/share/blesh/ble.sh" &>"$(tty)"
}
