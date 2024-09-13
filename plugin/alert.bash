about-plugin 'Add an alert function'
one-bash:mod:deps osascript

alert() {
	local msg=$1
	osascript -e "display notification \"$msg\" with title \"Alert\""
}
