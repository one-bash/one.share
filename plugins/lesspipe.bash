about-plugin '
Enable highlight for less command.
Depend on source-highlight.  https://www.gnu.org/software/src-highlite
To install:
  for MacOS: brew install source-highlight
  for other systems: https://www.gnu.org/software/src-highlite/source-highlight.html#Installation
'

# make less more friendly for non-text input files, see lesspipe(1)
if [[ -x /usr/bin/lesspipe ]]; then
  LESSPIPE_SCRIPT=/usr/bin/lesspipe
else
  LESSPIPE_SCRIPT=$(which src-hilite-lesspipe.sh || true)
fi

if [[ -n "$LESSPIPE_SCRIPT" ]]; then
  export LESSOPEN="| ${LESSPIPE_SCRIPT} %s"
  export LESS=" -R "
else
  echo 'Not found command lesspipe.' >&2
  exit 1
fi
