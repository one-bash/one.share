about-plugin 'https://github.com/akinomyoga/ble.sh'

if [[ -f "$HOME/.local/share/blesh/ble.sh" ]]; then
  . "$HOME/.local/share/blesh/ble.sh"
elif [[ -f $ONE_SHARE_DIR/deps/ble.sh/out/ble.sh ]]; then
  # shellcheck source=../deps/ble.sh/out/ble.sh
  . "$ONE_SHARE_DIR/deps/ble.sh/out/ble.sh"
else
  echo "Not found ble.sh." >&2
  return 1
fi
