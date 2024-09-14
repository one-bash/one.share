about-plugin 'Java settings'

if [[ "$ONE_OS" == MacOS ]]; then
	if [[ -d /usr/libexec/java_home ]]; then
		# https://mkyong.com/java/how-to-set-java_home-environment-variable-on-mac-os-x/
		export JAVA_HOME=$(/usr/libexec/java_home)
	fi

	if [[ -d $HOMEBREW_PREFIX/opt/openjdk/include ]]; then
		export CPPFLAGS="-I$HOMEBREW_PREFIX/opt/openjdk/include ${CPPFLAGS:-}"
	fi
else
	# @TODO for Windows and Linux system
	true
fi
