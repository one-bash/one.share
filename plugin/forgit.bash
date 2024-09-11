about-plugin 'https://github.com/wfxr/forgit'

export FORGIT_GLO_FORMAT="%C(237)╮ %C(blue)%h%C(auto)%d %C(white)%s%n%C(237)╰ %C(240)%ai (%ar) %aN|%cN"
export FORGIT_LOG_FORMAT="%C(blue)%h%C(auto)%d %C(white)%s %C(240)(%ar)"

export FORGIT_ENTER_PAGER='less --tabs=2 -gRXM'

# https://github.com/wfxr/forgit#fzf-options
export FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--layout reverse
--height '99%'
"

FORGIT_KEYBINDS=(
  # Enter	        Confirm
  # Tab	          Toggle mark and move up
  # Shift - Tab	  Toggle mark and move down
  # ?	            Toggle preview window
  # Alt - W	      Toggle preview wrap
  # Ctrl - S	    Toggle sort
  # Ctrl - R	    Toggle selection
  # Ctrl - Y	    Copy commit hash*
  # Ctrl - K / P	Selection move up
  # Ctrl - J / N	Selection move down
  # Alt - K / P	  Preview move up
  # Alt - J / N	  Preview move down
  alt-p:toggle-preview
  ctrl-f:half-page-down
  ctrl-b:half-page-up
  alt-f:preview-down
  alt-b:preview-up
)

export FORGIT_LOG_FZF_OPTS=""

FORGIT_LOG_KEYBINDS=(
)

for keybind in "${FORGIT_LOG_KEYBINDS[@]}"; do
  FORGIT_LOG_FZF_OPTS="$FORGIT_LOG_FZF_OPTS --bind='$keybind'"
done

for keybind in "${FORGIT_KEYBINDS[@]}"; do
  FORGIT_FZF_DEFAULT_OPTS="$FORGIT_FZF_DEFAULT_OPTS --bind='$keybind'"
done

unset -v keybind FORGIT_KEYBINDS FORGIT_LOG_KEYBINDS
