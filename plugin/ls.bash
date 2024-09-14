about-plugin 'Better ls commands. If eza or exa installed, create aliases'

if one_l.has command eza; then
	alias ls='eza -x'
	alias ll='eza -lahgbUu --icons --time-style=long-iso'
	alias l='eza -lahgbUu --icons --time-style=long-iso'
	alias llm='ll -s modified'
elif one_l.has command exa; then
	alias ls='exa -x'
	alias ll='exa -lahgbUu --icons --time-style=long-iso'
	alias l='exa -lahgbUu --icons --time-style=long-iso'
	alias llm='ll -s modified'
else
	if ls --color -d . &>/dev/null; then
		alias ls='ls --color=auto'
	elif ls -G -d . &>/dev/null; then
		alias ls='ls --color=auto -G' # Compact view, show colors
	else
		alias ls='ls --color=auto -F'
	fi

	alias ll='ls --color=auto -lahFT'
	alias l='ls --color=auto -lahFT'
	alias llm='ll --color=auto -tr'
fi
