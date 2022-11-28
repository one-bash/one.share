about-plugin 'The-fuck, corrects your previous console command. https://github.com/nvbn/thefuck'

one_check_cmd thefuck || return 1

eval "$(thefuck --alias)"
