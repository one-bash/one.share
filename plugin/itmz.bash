about-plugin 'https://github.com/adoyle-h/iThoughts-Search'
one-bash:mod:deps itmz

export ITMZ_DIR=${ITMZ_DIR:-~/itmz_data}
export ITMZ_HOME=${ITMZ_HOME:-~/.itmz}

# shellcheck disable=1090
source <(itmz --completion)
