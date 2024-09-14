about-plugin 'Enable acme.sh. https://github.com/Neilpang/acme.sh'

alias acme.sh='~/.acme.sh/acme.sh'

if [[ -f "$HOME/.acme.sh/acme.sh.env" ]]; then
	. "$HOME/.acme.sh/acme.sh.env"
fi
