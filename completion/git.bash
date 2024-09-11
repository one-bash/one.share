# load git-prompt which contains __git_ps1 function

if ! type __git_ps1 &>/dev/null ; then
  if [[ -f /usr/share/git/completion/git-prompt.sh ]]; then
    . /usr/share/git/completion/git-prompt.sh
  fi
fi
