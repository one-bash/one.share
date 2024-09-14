about-plugin 'keybase cli completion. https://keybase.io/'
# source code: https://github.com/keybase/client/pull/10058#issuecomment-461193081

_keybase_autocomplete() {
	if [[ "${COMP_WORDS[0]}" != "source" ]]; then
		local cur opts
		COMPREPLY=()
		cur="${COMP_WORDS[COMP_CWORD]}"
		if [[ "$cur" == "-"* ]]; then
			# shellcheck disable=2068
			opts=$(${COMP_WORDS[@]:0:$COMP_CWORD} "${cur}" --generate-bash-completion)
		else
			# shellcheck disable=2068
			opts=$(${COMP_WORDS[@]:0:$COMP_CWORD} --generate-bash-completion)
		fi
		# shellcheck disable=2207
		COMPREPLY=($(compgen -W "${opts}" -- "${cur}"))
		return 0
	fi
}

complete -o bashdefault -o default -o nospace -F _keybase_autocomplete keybase
