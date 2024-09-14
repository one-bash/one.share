about-plugin 'fzf completion. https://github.com/junegunn/fzf'

if [[ -d /usr/local/opt/fzf ]]; then
	FZF_DIR=/usr/local/opt/fzf
	FZF_SCRIPT_DIR=$FZF_DIR/shell
elif [[ -d /opt/homebrew/opt/fzf ]]; then
	FZF_DIR=/opt/homebrew/opt/fzf
	FZF_SCRIPT_DIR=$FZF_DIR/shell
elif [[ -d $HOME/.fzf/bin ]]; then
	FZF_DIR=$HOME/.fzf
	FZF_SCRIPT_DIR=$FZF_DIR/shell
elif [[ -d /usr/share/doc/fzf ]]; then
	FZF_SCRIPT_DIR=/usr/share/doc/fzf/examples
elif [[ -d /usr/share/fzf ]]; then
	# pacman package
	FZF_SCRIPT_DIR=/usr/share/fzf
else
	echo "Not found fzf directory. Please install fzf by git or homebrew, see https://github.com/junegunn/fzf#installation" >&2
	return 1
fi

# Auto-completion
source "$FZF_SCRIPT_DIR/completion.bash"

unset -v FZF_DIR FZF_SCRIPT_DIR
