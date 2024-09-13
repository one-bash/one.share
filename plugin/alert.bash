about-plugin 'Add an alert function'

one_check_cmd osascript || return 1

alert() {
	local msg=$1
	osascript -e "display notification \"$msg\" with title \"Alert\""
}
