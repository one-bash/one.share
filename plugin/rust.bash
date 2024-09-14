about-plugin 'Rust completion and settings'

CARGO_BIN=$HOME/.cargo/bin

if [[ -d $CARGO_BIN ]]; then
	export PATH="$PATH:$CARGO_BIN"
	unset -v CARGO_BIN
else
	echo "Not found folder: $CARGO_BIN" >&2
	unset -v CARGO_BIN
	return 1
fi

# Enable auto completion
if one_l.has command rustup; then
	eval "$(rustup completions bash)"
fi
