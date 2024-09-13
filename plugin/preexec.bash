# ONE_LOAD_PRIORITY: 201
about-plugin 'Enable bash-preexec. https://github.com/rcaloras/bash-preexec'

script="$ONE_SHARE/deps/bash-preexec/bash-preexec.sh"

if [[ ! -f $script ]]; then
	echo "Missing script: ${script}" >&2
	echo "Do you have run 'git submodule update --init --recursive' on $ONE_DIR?" >&2
	return 1
fi

# shellcheck source=../deps/bash-preexec/bash-preexec.sh
source "$script"

unset script
