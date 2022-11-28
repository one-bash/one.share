about-plugin 'Enable npm completion'

one_check_cmd npm || return 1

eval "$(npm completion)"
