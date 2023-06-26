# ONE_LOAD_PRIORITY: 550
about-plugin 'https://github.com/scop/bash-completion'

# The completion files loaded if file existed:
# - /etc/bash_completion
# - /etc/profile.d/bash_completion.sh
# - /usr/share/bash-completion/bash_completion
# - If bash-completion installed. It will load files in order when file existed:
#   - ${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion
#   - ${BASH_COMPLETION_COMPAT_DIR:-/usr/local/etc/bash_completion.d} (It is an option for backwards compatibility. https://github.com/scop/bash-completion/blob/2.11/doc/bash_completion.txt#L22)
#   - ${BASH_COMPLETION_USER_FILE:-~/.bash_completion}

BASH_COMPLETION_DIRS=(
  # Loads the system's Bash completion modules.
  /etc/bash_completion
  # Some distribution makes use of a profile.d script to import completion.
  /etc/profile.d/bash_completion.sh
  # bash-completion installed by package manager
  /usr/share/bash-completion/bash_completion
  # bash-completion
  /usr/local/etc/profile.d/bash_completion.sh
  # bash-completion (MacOS Apple Silicon)
  /opt/homebrew/etc/profile.d/bash_completion.sh
)

for BASH_COMPLETION_FILE in "${BASH_COMPLETION_DIRS[@]}"; do
  if [[ -f $BASH_COMPLETION_FILE ]]; then
    one_debug "To load completion file: $BASH_COMPLETION_FILE"
    source "$BASH_COMPLETION_FILE"
  fi
done

unset -v BASH_COMPLETION_FILE BASH_COMPLETION_DIRS
