# ONE_LOAD_PRIORITY: 370
about-plugin 'Use gnu tools instead of default commands for MacOS. "brew install coreutils".'
one-bash:mod:deps gdate gtimeout gtruncate

alias date='gdate'
alias timeout='gtimeout'
alias truncate='gtruncate'

function set_gnu_sed() {
	local gnu_sed_dir=$1

	if [[ -d $gnu_sed_dir/bin ]] && (! one_l.str_include "$PATH" "$gnu_sed_dir/bin"); then
		export PATH="$gnu_sed_dir/bin:$PATH"
		export MANPATH="$MANPATH:$gnu_sed_dir/libexec/gnuman"
		return 0
	else
		return 4
	fi
}

if ! set_gnu_sed /usr/local/opt/gnu-sed; then
	if ! set_gnu_sed /opt/homebrew/opt/gnu-sed; then
		echo "Not found gnu-sed" >&2
	fi
fi
unset -f set_gnu_sed
