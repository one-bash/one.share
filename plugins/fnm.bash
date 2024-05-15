# ONE_LOAD_PRIORITY: 380
about-plugin https://github.com/Schniz/fnm

if one_l.has_not command fnm; then
	echo 'Command "fnm" is not found. Ensure you have installed it. See https://github.com/Schniz/fnm'
fi

eval "$(fnm env --use-on-cd)"

# Usage: fnm_upgrade 18.4
# Desc: migrate the global npm packages from specific node version to current node
fnm_upgrade() {
	fnm exec --using="$1" npm ls --global --json |
		jq -r '.dependencies | to_entries[] | .key+"@"+.value.version' |
		xargs npm i -g
}
