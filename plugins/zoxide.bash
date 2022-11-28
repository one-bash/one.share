about-plugin 'zoxide settings. https://github.com/ajeetdsouza/zoxide'

one_check_cmd zoxide || return 1

evel "$(zoxide init bash --cmd j --hook pwd)"
