ABOUT='Initialize z command. https://github.com/skywind3000/z.lua.'
GITHUB_REPO=https://github.com/skywind3000/z.lua.git

APPEND() {
	export _ZL_CMD=${_ZL_CMD:-j}
	export _ZL_DATA=${_ZL_DATA:-$HOME/.z_lua}
	export _ZL_NO_PROMPT_COMMAND=${_ZL_NO_PROMPT_COMMAND:-true}
	export _ZL_EXCLUDE_DIRS=(.git)
	# export _ZL_CD=cd
	export _ZL_MATCH_MODE=${_ZL_MATCH_MODE:-1}
	# Add path to database only if current working directory changed.
	# (By default, it adds path each time before display command prompt)
	export _ZL_ADD_ONCE=${_ZL_ADD_ONCE:-1}

	z_lua_init_options=(bash)
	if one_l.has command fzf; then
		z_lua_init_options+=(fzf)
	fi

	eval "$(lua "$ONE_DIR/data/plugin/zl/git/z.lua" --init "${z_lua_init_options[@]}")"

	_z_lua_add_path() {
		(_zlua --add "$(command pwd 2>/dev/null)" &)
	}

	# fix ZL_PROMPT_COMMAND
	# one_prompt_append _z_lua_add_path
	PROMPT_COMMAND="${PROMPT_COMMAND:-};_z_lua_add_path"

	alias "${_ZL_CMD}u"="${_ZL_CMD} -b"      # cd to the parent directory starting with foo
	alias "${_ZL_CMD}l"="${_ZL_CMD} -l foo"  # list matches instead of cd
	alias "${_ZL_CMD}c"="${_ZL_CMD} -c"      # restrict matches to subdirs of $PWD
	alias "${_ZL_CMD}z"="${_ZL_CMD} -i"      # cd with interactive selection
	alias "${_ZL_CMD}f"="${_ZL_CMD} -I"      # cd with interactive selection using fzf
	alias "${_ZL_CMD}b"="${_ZL_CMD} -t -I ." # go back to last directory
}
