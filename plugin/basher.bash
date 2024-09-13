# shellcheck disable=2034
about-plugin 'Init basher. https://github.com/basherpm/basher'
one-bash:mod:deps basher

BASHER_FULL_CLONE=false
# BASHER_PREFIX=$HOME/.basher/cellar

# shellcheck disable=1090
source <(basher init -)
