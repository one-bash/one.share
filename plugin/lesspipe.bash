about-plugin 'Enable highlight for less command. Make less more friendly for non-text input files, see lesspipe(1).'
about-plugin 'Depend on source-highlight.  https://www.gnu.org/software/src-highlite'
about-plugin 'Install for MacOS: brew install source-highlight'
about-plugin 'Install for other systems: https://www.gnu.org/software/src-highlite/source-highlight.html#Installation'

LESSPIPE_SCRIPT=$(
	which lesspipe 2>/dev/null ||
		which lesspipe.sh 2>/dev/null ||
		which src-hilite-lesspipe.sh 2>/dev/null ||
		true
)

if [[ -x "$LESSPIPE_SCRIPT" ]]; then
	export LESSOPEN="| ${LESSPIPE_SCRIPT} %s"
	export LESS=" -R "
else
	echo 'Not found command lesspipe.' >&2
	return 1
fi
