# shellcheck disable=2034
about-plugin 'Init basher. https://github.com/basherpm/basher'

one_check_cmd basher || return 1

BASHER_FULL_CLONE=false
# BASHER_PREFIX=$HOME/.basher/cellar

# shellcheck disable=1090
source <(basher init -)
