about-plugin 'Load nix-daemon.sh . https://github.com/NixOS/nix'

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
	# shellcheck disable=1091
	. '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
