# ONE_LOAD_PRIORITY: 380
about-plugin https://github.com/Schniz/fnm

if one_l.has_not command fnm; then
  echo 'Command "fnm" is not found. Ensure you have installed it. See https://github.com/Schniz/fnm'
fi

eval "$(fnm env --use-on-cd)"
