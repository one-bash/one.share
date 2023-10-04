ABOUT='Install diff-so-fancy from https://github.com/so-fancy/diff-so-fancy'
EXPORTS=(diff-so-fancy)

install() {
  local version=${_VERSION:-latest}
  local github=${_GITHUB:-so-fancy/diff-so-fancy}
  local url

  if [[ $version == latest ]]; then
    url="https://github.com/$github/releases/latest/download/diff-so-fancy"
  else
    url="https://github.com/$github/releases/download/$version/diff-so-fancy"
  fi

  printf 'To download file: %s\n' "$url" >&2
  curl -Lo "$MOD_DATA_DIR"/diff-so-fancy "$url"
  chmod +x "$MOD_DATA_DIR"/diff-so-fancy
}
