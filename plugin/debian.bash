about-plugin 'Some settings for Debian system'

if [[ "$(uname -s)" != "Linux" ]] || [[ ! -f /etc/debian_version ]]; then
  echo "WARNING: Current system is not Debian but you have enabled debian.plugin.bash." >&2
  return 1
fi

# set variable identifying the chroot you work in (used in the prompt below)
if [[ -z "$debian_chroot" ]] && [[ -r /etc/debian_chroot ]]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

alias open='nautilus'
