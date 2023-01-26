URL=https://raw.githubusercontent.com/ogham/exa/master/completions/bash/exa

IFS='' # for multi-line string
APPEND='cat <<EOF
complete -o filenames -o bashdefault -F _exa ls
complete -o filenames -o bashdefault -F _exa ll
EOF'
