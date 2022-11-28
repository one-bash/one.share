about-plugin 'xcode settings'

if [[ ! -d /Applications/Xcode.app ]]; then
  echo "Not found /Applications/Xcode.app" >&2
  return 1
fi

add_xcode_manpath() {
  local XCODE_MANPATH=$1

  if ! one_l.str_include "$MANPATH" "$XCODE_MANPATH"; then
    export MANPATH="$MANPATH:$XCODE_MANPATH"
  fi
}

add_xcode_manpath "/Applications/Xcode.app/Contents/Developer/usr/share/man"
add_xcode_manpath "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/share/man"
unset -f add_xcode_manpath
