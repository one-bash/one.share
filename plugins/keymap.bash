# ONE_LOAD_PRIORITY: 201
about-plugin 'bind some keymaps for terminal'

# Press Tab to completion in circle
bind "TAB:menu-complete"

# \e equals both ESC and ALT. It is a bad design!
# Press ESC and wait 1 second to abort
bind '"\e": abort'

# Shift+Tab move backward
bind '"\e[Z":menu-complete-backward'

# Use the text that has already been typed as the prefix for searching through
# commands (i.e. more intelligent Up/Down behavior)
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# Use Alt/Meta + Delete to delete the preceding word
bind '"\e[3;3~": kill-word'

bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'

# run shell command "clear" to clear screen
bind -x '"\C-l": clear'
bind -m emacs-standard '"\ec": capitalize-word'

# Unbind default `alt-numkey` (digit-argument) in shell.
# Refer to http://superuser.com/a/770902
for i in "-" {0..9}; do bind -r "\\e$i"; done

# unbind Alt+N (non-incremental-forward-search-history)
bind -r "\\en"
# unbind Alt+P (non-incremental-reverse-search-history)
bind -r "\\ep"
