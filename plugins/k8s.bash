about-plugin 'k8s settings'

alias k=kubectl

if one_l.has function __start_kubectl; then
  complete -F __start_kubectl k
fi

# https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-context-and-configuration
export KUBECONFIG=${KUBECONFIG:-~/.kube/config}

if [[ -d $HOME/.krew/bin ]]; then
  PATH=${PATH}:$HOME/.krew/bin
fi

##########################
#  Kubebuilder settings  #
##########################

kubebuilder_use() {
  local KUBEBUILDER_VER=$1 OLD_KUBEBUILDER_VER
  local KUBEBUILDER_PATH=$HOME/bin/kubebuilder_$KUBEBUILDER_VER
  OLD_KUBEBUILDER_VER=$(kubebuilder_version)

  if [[ -d $KUBEBUILDER_PATH ]]; then
    if [[ -n $OLD_KUBEBUILDER_VER ]]; then
      PATH=$(one_l.str_replace "$PATH" "$HOME/bin/kubebuilder_$OLD_KUBEBUILDER_VER" "$KUBEBUILDER_PATH")
    else
      PATH=$PATH:$KUBEBUILDER_PATH/bin
    fi
  fi

  echo "Using kubebuilder:$KUBEBUILDER_VER"
}

kubebuilder_switch() {
  local KUBEBUILDER_VER
  KUBEBUILDER_VER=$(kubebuilder_version)

  if [[ $KUBEBUILDER_VER == 1.0.8 ]]; then
    KUBEBUILDER_VER=2
  else
    KUBEBUILDER_VER=1.0.8
  fi
  kubebuilder_use $KUBEBUILDER_VER
}

kubebuilder_version() {
  one_l.match "$PATH" 'bin/kubebuilder_([._0-9]+)/bin'
}

kubebuilder_status() {
  local KUBEBUILDER_VER
  KUBEBUILDER_VER=$(kubebuilder_version)
  echo "Kubebuilder Version: $KUBEBUILDER_VER"
}


if one_l.has command kustomize; then
  complete -C kustomize kustomize
fi

# kubebuilder_use 2 > /dev/null
