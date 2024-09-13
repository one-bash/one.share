about-plugin 'xcode settings'

if [[ ! -d /Applications/Xcode.app ]]; then
	echo "Not found /Applications/Xcode.app" >&2
	return 1
fi

MACOSX_SDK="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
export LIBRARY_PATH="$MACOSX_SDK/usr/lib:${LIBRARY_PATH:-}"
export CPATH="$MACOSX_SDK/usr/include:${CPATH:-}"
unset -v MACOSX_SDK

add_xcode_manpath() {
	local XCODE_MANPATH=$1

	if ! one_l.str_include "$MANPATH" "$XCODE_MANPATH"; then
		export MANPATH="$MANPATH:$XCODE_MANPATH"
	fi
}

add_xcode_manpath "/Applications/Xcode.app/Contents/Developer/usr/share/man"
add_xcode_manpath "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/share/man"
unset -f add_xcode_manpath
