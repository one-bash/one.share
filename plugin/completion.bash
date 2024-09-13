# ONE_LOAD_PRIORITY: 202
# shellcheck disable=SC1090

about-plugin 'Make more sensible for shell completions'

# If set to ‘on’, menu completion displays the common prefix of the list of
# possible completions (which may be empty) before cycling through the list. The default is ‘off’.
bind "set menu-complete-display-prefix on"

# Make Tab autocomplete regardless of filename case
bind "set completion-ignore-case on"

# List all matches in case multiple possible completions are possible
bind "set show-all-if-ambiguous on"

# Show all autocomplete results in page
bind "set page-completions on"

# If there are more than 40 possible completions for a word, ask to show them all
bind "set completion-query-items 40"

# Do not autocomplete hidden files unless the pattern explicitly begins with a dot
bind "set match-hidden-files off"

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

# Displays possible completions using different colors to indicate their file type with
# readline v6.3 and later. The color definitions are taken from the value of the LS_COLORS
# environment variable.
bind "set colored-stats on"

# Be more intelligent when autocompleting by also looking at the text after
# the cursor. For example, when the current line is "cd ~/src/mozil", and
# the cursor is on the "z", pressing Tab will not autocomplete it to "cd
# ~/src/mozillail", but to "cd ~/src/mozilla". (This is supported by the
# Readline used by Bash 4.)
bind "set skip-completed-text on"

# Show extra file information when completing, like `ls -F` does
# bind "set visible-stats on"
