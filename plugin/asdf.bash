# shellcheck disable=1090,1091
about-plugin 'To load asdf if installed. https://github.com/asdf-vm/asdf'

if [[ -f "$HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh" ]]; then
	source "$HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh"
elif [[ -f "$HOME/.asdf/asdf.sh" ]]; then
	# shellcheck source=~/.asdf/asdf.sh
	source "$HOME/.asdf/asdf.sh"
	# shellcheck source=~/.asdf/completions/asdf.bash
	source "$HOME/.asdf/completions/asdf.bash"
fi
