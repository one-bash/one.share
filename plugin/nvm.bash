# ONE_LOAD_PRIORITY: 380
about-plugin 'enable nvm'

export NVM_DIR="$HOME/.nvm"

if one_l.has command brew; then
	BREW_PREFIX=$(brew --prefix)

	if [[ -d "$BREW_PREFIX/Cellar/nvm" ]]; then
		# brew --prefix <formula> is slow
		# https://github.com/Homebrew/brew/issues/3097#issuecomment-325206329
		brew_nvm_prefix="$(brew --prefix nvm)"
		if [[ -s $brew_nvm_prefix/nvm.sh ]]; then
			NVM_SOURCE=$brew_nvm_prefix
		fi
		unset -v brew_nvm_prefix
	fi

	unset -v BREW_PREFIX
fi

if [[ -z ${NVM_SOURCE:-} ]] && [[ -s $NVM_DIR/nvm.sh ]]; then
	NVM_SOURCE=$NVM_DIR
fi

if [[ -n "$NVM_SOURCE" ]]; then
	one_debug "source $NVM_SOURCE/nvm.sh"
	# shellcheck disable=1091
	. "$NVM_SOURCE/nvm.sh"

	# Enable nvm completion
	# shellcheck disable=1091
	[[ -r "$NVM_SOURCE"/bash_completion ]] && . "$NVM_SOURCE"/bash_completion
fi

unset -v NVM_SOURCE

if one_l.has_not function nvm; then
	cat <<EOF >&2
Shell function "nvm" is not found. Ensure you have installed the nvm. See https://github.com/creationix/nvm
If you install nvm via brew. Check the path of "brew --prefix nvm".
If you install nvm via curl. Check the path of "$NVM_DIR/nvm.sh".
EOF
fi
