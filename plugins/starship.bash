about-plugin 'Awesome shell prompt. https://starship.rs/'

one_check_cmd starship || return 1

eval "$(starship init bash)"
