about-plugin 'Golang environment settings'

MY_GOPATH=${GOPATH:-}

# GVM
GVM_SCRIPT="${ONE_GVM_SCRIPT:-"$HOME"/.gvm/scripts/gvm}"
# shellcheck disable=SC1090
[[ -f "$GVM_SCRIPT" ]] && source "$GVM_SCRIPT"
unset -v GVM_SCRIPT

# GOPATH
if [[ -n ${MY_GOPATH:-} ]]; then
	[[ ! -e $MY_GOPATH ]] && mkdir -p "$MY_GOPATH"

	export GOPATH=$MY_GOPATH

	# GVM set its GOPATH in PATH. $MY_GOPATH/bin should be before gvm.
	PATH=$MY_GOPATH/bin:$PATH
fi

# export GOPROXY=https://goproxy.io,direct
export GOPROXY=https://goproxy.cn,direct

# These project do not use proxy. Use comma to seperated.
# export GOPRIVATE=*.corp.example.com

unset -v MY_GOPATH
