about-plugin 'Some aliases to avoid making mistakes'

if one_l.has command trash; then
	# Safe "rm" command. Use trash if it exists. https://github.com/sindresorhus/trash
	alias rm='trash'
else
	alias rm='rm -i'
fi

alias cp='cp -i'
alias mv='mv -i'
