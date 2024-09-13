# shellcheck disable=1090,1091
about-plugin 'https://github.com/sxyazi/yazi'
one-bash:mod:deps yazi

function y() {
	local tmp
	tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd" || echo "Error: yazi: cd failed" >/dev/stdout
	fi
	rm -f -- "$tmp"
}
