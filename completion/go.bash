# gocomplete
GOCOMPLETE_PATH=$(which gocomplete)

# https://github.com/posener/complete/tree/master
if [[ -n $GOCOMPLETE_PATH ]]; then
  complete -C "$GOCOMPLETE_PATH" go
else
  cat <<EOF
[completions/go.bash] Not found gocomplete.
Try to install it via "go install github.com/posener/complete/v2/gocomplete@latest".
Then restart shell to take effect.
EOF
fi

unset -v GOCOMPLETE_PATH
