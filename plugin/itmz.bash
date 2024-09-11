about-plugin 'https://github.com/adoyle-h/iThoughts-Search'

one_check_cmd itmz || return 1

export ITMZ_DIR=${ITMZ_DIR:-~/itmz_data}
export ITMZ_HOME=${ITMZ_HOME:-~/.itmz}

# shellcheck disable=1090
source <(itmz --completion)
