about-plugin 'https://github.com/jarun/nnn'

BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
unset -v BLK CHR DIR EXE REG HARDLINK SYMLINK MISSING ORPHAN FIFO SOCK OTHER

# The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
# If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
# see. To cd on quit only on ^G, remove the "export" and make sure not to
# use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

# Copy from https://github.com/jarun/nnn/blob/master/misc/quitcd/quitcd.bash_sh_zsh
n() {
    # Block nesting of nnn in subshells
    [ "${NNNLVL:-0}" -eq 0 ] || {
        echo "nnn is already running"
        return
    }

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command builtin allows one to alias nnn to n, if desired, without
    # making an infinitely recursive alias
    command nnn "$@"

    [ ! -f "$NNN_TMPFILE" ] || {
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    }
}
