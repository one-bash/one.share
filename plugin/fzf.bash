# shellcheck disable=SC1090
about-plugin 'Settings for fzf; https://github.com/junegunn/fzf'

if [[ -d /usr/local/opt/fzf ]]; then
	FZF_DIR=/usr/local/opt/fzf
	FZF_BIN=$FZF_DIR/bin
	FZF_MANPATH=$FZF_DIR/share/man
	FZF_SCRIPT_DIR=$FZF_DIR/shell
elif [[ -d /opt/homebrew/opt/fzf ]]; then
	FZF_DIR=/opt/homebrew/opt/fzf
	FZF_BIN=$FZF_DIR/bin
	FZF_MANPATH=$FZF_DIR/share/man
	FZF_SCRIPT_DIR=$FZF_DIR/shell
elif [[ -d $HOME/.fzf/bin ]]; then
	FZF_DIR=$HOME/.fzf
	FZF_BIN=$FZF_DIR/bin
	FZF_MANPATH=$FZF_DIR/man
	FZF_SCRIPT_DIR=$FZF_DIR/shell
elif [[ -d /usr/share/doc/fzf ]]; then
	FZF_SCRIPT_DIR=/usr/share/doc/fzf/examples
elif [[ -d /usr/share/fzf ]]; then
	# pacman package
	FZF_SCRIPT_DIR=/usr/share/fzf
else
	echo "Not found fzf. Please install fzf, see https://github.com/junegunn/fzf#installation" >&2
	return 1
fi

if one_l.has_not command fzf; then
	export PATH="$PATH:$FZF_BIN"
fi

if ! man -w fzf &>/dev/null; then
	export MANPATH="$MANPATH:$FZF_MANPATH"
fi

one_check_cmd fzf || {
	echo "Not found command: fzf. You may install fzf in wrong way."
	return 1
}

# ---- BASIC ----

# fg         Text
# bg         Background
# preview-fg Preview window text
# preview-bg Preview window background
# hl         Highlighted substrings
# fg+        Text (current line)
# bg+        Background (current line)
# gutter     Gutter on the left (defaults to bg+)
# hl+        Highlighted substrings (current line)
# query      Query string
# disabled   Query string when search is disabled
# info       Info line (match counters)
# border     Border around the window (--border and --preview)
# prompt     Prompt
# pointer    Pointer to the current line
# marker     Multi-select marker
# spinner    Streaming input indicator
# header     Header
FZF_COLORS='--color=dark,hl:196,fg:-1,bg:#0B0B0C,preview-bg:#0B0B0C,hl:#D75F00,hl+:#D75F00,fg+:#689AFD,bg+:#181928,gutter:#0B0B0C,border:#6B6B6B,prompt:166,pointer:#689AFD,marker:160,info:252,spinner:237,header:#3BB1FF,query:#BEC0C4 --ansi --black'

FZF_KEYBINDS="--bind=\
alt-a:select-all,\
ctrl-alt-a:deselect-all,\
ctrl-t:toggle-all,\
left:page-up,\
right:page-down,\
ctrl-f:page-down,\
ctrl-b:page-up,\
ctrl-u:preview-half-page-up,\
ctrl-d:preview-half-page-down,\
ctrl-p:up+up,\
ctrl-n:down+down,\
alt-j:jump,\
esc:deselect-all,\
?:toggle-preview\
"

# ---- PREVIEW ----
FZF_CTRL_T_PREVIEW="--preview '(cat {} || tree -CF {}) 2> /dev/null | head -200'"
FZF_CTRL_R_PREVIEW=""
FZF_ALT_C_PREVIEW="--preview 'tree -C {} | head -200'"

# ---- CATEGORY ----
FZF_SEARCH_MODE='--extended'
FZF_SEARCH_RESULT='--sort --tiebreak=begin,length'
FZF_INTERFACE="${FZF_KEYBINDS} --multi --cycle"
FZF_LAYOUT="
  --separator=''
  --height='~50%'
  --min-height=1
  --inline-info
  --prompt='> '
  --pointer='➤ '
  --marker='+ '
  --border=rounded
  --layout=reverse
"
FZF_DISPLAY="--tabstop 2 ${FZF_COLORS}"
FZF_SCRIPTING="--select-1 --exit-0"

export FZF_DEFAULT_OPTS="${FZF_SEARCH_MODE} ${FZF_SEARCH_RESULT} ${FZF_INTERFACE} ${FZF_DISPLAY} ${FZF_LAYOUT} ${FZF_SCRIPTING}"
export FZF_DEFAULT_COMMAND='ag -l --ignore-dir node_modules --ignore-dir .git -g ""'
# export FZF_CTRL_T_COMMAND="ls"
export FZF_CTRL_T_OPTS="${FZF_DEFAULT_OPTS} --header='[Files]' ${FZF_CTRL_T_PREVIEW}"
export FZF_CTRL_R_OPTS="${FZF_DEFAULT_OPTS} --header='[History]' --tiebreak=index ${FZF_CTRL_R_PREVIEW}"
export FZF_ALT_C_OPTS="${FZF_DEFAULT_OPTS} --header='[Checkout Directory]' ${FZF_ALT_C_PREVIEW}"

if [[ -n "$TMUX" ]]; then
	export FZF_TMUX=1
fi

# Key bindings
test -f "$FZF_SCRIPT_DIR/key-bindings.bash" && source "$FZF_SCRIPT_DIR/key-bindings.bash"

unset -v FZF_DIR FZF_MANPATH FZF_BIN FZF_SCRIPT_DIR
