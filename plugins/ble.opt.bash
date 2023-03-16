ABOUT='A full-featured line editor written in pure Bash! Syntax highlighting, auto suggestions'
URL='https://github.com/akinomyoga/ble.sh.git'
APPEND='cat <<EOF
. $MOD_DATA_DIR/dist/share/blesh/ble.sh &> "\$(tty)"
EOF'
RUN='make -C "$MOD_DATA_DIR/git" install PREFIX="$MOD_DATA_DIR/dist"'
DEP_CMDS='gawk'
