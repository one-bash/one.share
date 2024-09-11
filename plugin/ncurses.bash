about-plugin 'https://invisible-island.net/ncurses/ncurses.html'

if [[ -d /opt/homebrew/opt/ncurses ]]; then
  # It must be insert not append. Because system builtin /usr/bin/infocmp existed, and it is version 5.
  one_PATH_insert /opt/homebrew/opt/ncurses/bin
  one_MANPATH_append /opt/homebrew/opt/ncurses/share/man

  # For compilers to find ncurses you may need to set:
  #   export LDFLAGS="-L/opt/homebrew/opt/ncurses/lib"
  #   export CPPFLAGS="-I/opt/homebrew/opt/ncurses/include"

  # For pkg-config to find ncurses you may need to set:
  #   export PKG_CONFIG_PATH="/opt/homebrew/opt/ncurses/lib/pkgconfig"
fi
